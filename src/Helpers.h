#pragma once

#include <exception>

#define WIN32_LEAN_AND_MEAN
#include <Windows.h> // for HRESULT

// From DXSampleHelper.h
// Source: https://github.com/Microsoft/DirectX-Graphics-Samples

inline void ThrowIfFailed(HRESULT hr)
{
	if (FAILED(hr))
	{
		throw std::exception();
	}
}
