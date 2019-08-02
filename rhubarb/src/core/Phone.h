#pragma once

#include "tools/EnumConverter.h"

// Defines a subset of the Arpabet
enum class Phone {
	/////////
	// Vowels

	// ... monophthongs
	AO,		// [ɔ] as in [o]ff, f[a]ll, fr[o]st
	AA,		// [ɑ] as in f[a]ther
	IY,		// [i] as in b[ee], sh[e]
	UW,		// [u] as in y[ou], n[ew], f[oo]d
	EH,		// [ɛ] as in r[e]d, m[e]n
	IH,		// [ɪ] as in b[i]g, w[i]n
	UH,		// [ʊ] as in sh[ou]ld, c[ou]ld
	AH,		// [ʌ] as in b[u]t, s[u]n
	Schwa,	// [ə] as in [a]lone, disc[u]s
	AE,		// [æ] as in [a]t, b[a]t

	// ... diphthongs
	EY,		// [eɪ] as in s[ay], [ei]ght
	AY,		// [aɪ] as in m[y], wh[y], r[i]de
	OW,		// [oʊ] as in sh[ow], c[oa]t
	AW,		// [aʊ] as in h[ow], n[ow]
	OY,		// [ɔɪ] as in b[oy], t[oy]

	// ... r-colored
	ER,		// [ɝ] as in h[er], b[ir]d, h[ur]t
	LastVowel = ER,

	/////////////
	// Consonants

	// ... stops
	P,		// [p] as in [p]ay
	B,		// [b] as in [b]uy
	T,		// [t] as in [t]ake
	D,		// [d] as in [d]ay
	K,		// [k] as in [k]ey
	G,		// [g] as in [g]o

	// ... affricates
	CH,		// [tʃ] as in [ch]air
	JH,		// [dʒ] as in [j]ust

	// ... fricatives
	F,		// [f] as in [f]or
	V,		// [v] as in [v]ery
	TH,		// [θ] as in [th]anks
	DH,		// [ð] as in [th]at
	S,		// [s] as in [s]ay
	Z,		// [z] as in [z]oo
	SH,		// [ʃ] as in [sh]ow
	ZH,		// [ʒ] as in mea[s]ure, plea[s]ure
	HH,		// [h] as in [h]ouse

	// ... nasals
	M,		// [m] as in [m]an
	N,		// [n] as in [no]
	NG,		// [ŋ] as in si[ng]

	// ... liquids
	L,		// [ɫ] as in [l]ate
	R,		// [r, ɹ] as in [r]un

	// ... semivowels
	Y,		// [j] as in [y]es
	W,		// [w] as in [w]ay

	/////////////
	// Misc.

	Breath,
	Cough,
	Smack,
	Noise
};


static std::map<Phone, std::string> phonemeNames = {

	/////////
	// Vowels

	{ Phone::AO,		"AO" },
	{ Phone::AA,		"AA" },
	{ Phone::IY,		"IY" },
	{ Phone::UW,		"UW" },
	{ Phone::EH,		"EH" },
	{ Phone::IH,		"IH" },
	{ Phone::UH,		"UH" },
	{ Phone::AH,		"AH" },
	{ Phone::Schwa,		"Schwa" },
	{ Phone::AE,		"AE" },
	{ Phone::EY,		"EY" },
	{ Phone::AY,		"AY" },
	{ Phone::OW,		"OW" },
	{ Phone::AW,		"AW" },
	{ Phone::OY,		"OY" },
	{ Phone::ER,		"ER" },

	{ Phone::P,			"P" },
	{ Phone::B,			"B" },
	{ Phone::T,			"T" },
	{ Phone::D,			"D" },
	{ Phone::K,			"K" },
	{ Phone::G,			"G" },
	{ Phone::CH,		"CH" },
	{ Phone::JH,		"JH" },
	{ Phone::F,			"F" },
	{ Phone::V,			"V" },
	{ Phone::TH,		"TH" },
	{ Phone::DH,		"DH" },
	{ Phone::S,			"S" },
	{ Phone::Z,			"Z" },
	{ Phone::SH,		"SH" },
	{ Phone::ZH,		"ZH" },
	{ Phone::HH,		"HH" },
	{ Phone::M,			"M" },
	{ Phone::N,			"N" },
	{ Phone::NG,		"NG" },
	{ Phone::L,			"L" },
	{ Phone::R,			"R" },
	{ Phone::Y,			"Y" },
	{ Phone::W,			"W" },

	{ Phone::Breath,	"Breath" },
	{ Phone::Cough,		"Cough" },
	{ Phone::Smack,		"Smack" },
	{ Phone::Noise,		"Noise" }

};

class PhoneConverter : public EnumConverter<Phone> {
public:
	static PhoneConverter& get();
protected:
	std::string getTypeName() override;
	member_data getMemberData() override;
public:
	boost::optional<Phone> tryParse(const std::string& s) override;
};

std::ostream& operator<<(std::ostream& stream, Phone value);

std::istream& operator>>(std::istream& stream, Phone& value);

bool isVowel(Phone phone);