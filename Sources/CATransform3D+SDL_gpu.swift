//
//  CATransform3D+SDL_gpu.swift
//  UIKit
//
//  Created by Geordie Jay on 13.02.18.
//  Copyright © 2018 flowkey. All rights reserved.
//

import SDL_gpu

extension CATransform3D {
    // Set's SDL_GPU's current matrix
    internal func setAsSDLgpuMatrix() {
        let currentMatrix = UnsafeMutableBufferPointer(start: GPU_GetCurrentMatrix(), count: 16)
        currentMatrix[0] = m11
        currentMatrix[1] = m12
        currentMatrix[2] = m13
        currentMatrix[3] = m14
        currentMatrix[4] = m21
        currentMatrix[5] = m22
        currentMatrix[6] = m23
        currentMatrix[7] = m24
        currentMatrix[8] = m31
        currentMatrix[9] = m32
        currentMatrix[10] = m33
        currentMatrix[11] = m34
        currentMatrix[12] = m41
        currentMatrix[13] = m42
        currentMatrix[14] = m43
        currentMatrix[15] = m44
    }
}
