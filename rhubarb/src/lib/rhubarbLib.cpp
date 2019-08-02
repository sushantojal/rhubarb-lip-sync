#include "rhubarbLib.h"
#include "core/Phone.h"
#include "tools/textFiles.h"
#include "animation/mouthAnimation.h"
#include "audio/audioFileReading.h"

using boost::optional;
using std::string;
using boost::filesystem::path;


BoundedTimeline<Phone> phonemes_ts;


std::vector<std::pair<std::pair<float, float>, std::string>> getPhonemeTimestamps()
{
	std::vector<std::pair<std::pair<float, float>, std::string>> timestampPhonemes;
	
	for (auto &value : phonemes_ts)
	{
		float start = value.getStart().count();
		float end = value.getEnd().count();

		auto timeRange = std::make_pair(start, end);
		std::string phoneme = phonemeNames[value.getValue()];
		
		timestampPhonemes.push_back(std::make_pair(timeRange, phoneme));
	}
	return timestampPhonemes;
}


JoiningContinuousTimeline<Shape> animateAudioClip(
	const AudioClip& audioClip,
	const optional<string>& dialog,
	const Recognizer& recognizer,
	const ShapeSet& targetShapeSet,
	int maxThreadCount,
	ProgressSink& progressSink)
{
	const BoundedTimeline<Phone> phones =
		recognizer.recognizePhones(audioClip, dialog, maxThreadCount, progressSink);

	//adding to export phoneme information
	phonemes_ts = phones;

	JoiningContinuousTimeline<Shape> result = animate(phones, targetShapeSet);
	return result;
}

JoiningContinuousTimeline<Shape> animateWaveFile(
	path filePath,
	const optional<string>& dialog,
	const Recognizer& recognizer,
	const ShapeSet& targetShapeSet,
	int maxThreadCount,
	ProgressSink& progressSink)
{
	const auto audioClip = createAudioFileClip(filePath);
	return animateAudioClip(*audioClip, dialog, recognizer, targetShapeSet, maxThreadCount, progressSink);
}
