/*!
 * iOS SDK
 *
 * Tencent is pleased to support the open source community by making
 * Hippy available.
 *
 * Copyright (C) 2019 THL A29 Limited, a Tencent company.
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "NativeRenderRefreshWrapperViewManager.h"
#import "NativeRenderRefreshWrapper.h"
#import "HippyUIManager.h"

@implementation NativeRenderRefreshWrapperViewManager

HIPPY_EXPORT_MODULE(RefreshWrapper)

HIPPY_EXPORT_VIEW_PROPERTY(onRefresh, HippyDirectEventBlock)

HIPPY_EXPORT_VIEW_PROPERTY(bounceTime, CGFloat)
- (UIView *)view {
    return [NativeRenderRefreshWrapper new];
}

HIPPY_EXPORT_METHOD(refreshComplected:(NSNumber *__nonnull)componentTag) {
    [self.bridge.uiManager addUIBlock:^(HippyUIManager *uiManager, NSDictionary<NSNumber *,__kindof UIView *> *viewRegistry) {
        NativeRenderRefreshWrapper *wrapperView = viewRegistry[componentTag];
        [wrapperView refreshCompleted];
    }];
}

HIPPY_EXPORT_METHOD(startRefresh:(NSNumber *__nonnull)componentTag) {
    [self.bridge.uiManager addUIBlock:^(HippyUIManager *uiManager, NSDictionary<NSNumber *,__kindof UIView *> *viewRegistry) {
        NativeRenderRefreshWrapper *wrapperView = viewRegistry[componentTag];
        [wrapperView startRefresh];
    }];
}

@end
