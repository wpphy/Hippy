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

#import <WebKit/WebKit.h>
#import "HippyComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface NativeRenderSimpleWebView : WKWebView <WKUIDelegate, WKNavigationDelegate>
@property (nonatomic, strong) NSString *userAgent;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSDictionary *source;
@property (nonatomic, copy) HippyDirectEventBlock onLoadStart;
@property (nonatomic, copy) HippyDirectEventBlock onLoadEnd;
@property (nonatomic, copy) HippyDirectEventBlock onLoad;

@end

NS_ASSUME_NONNULL_END
