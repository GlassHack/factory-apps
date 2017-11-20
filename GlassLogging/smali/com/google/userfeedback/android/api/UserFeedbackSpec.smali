.class public Lcom/google/userfeedback/android/api/UserFeedbackSpec;
.super Ljava/lang/Object;
.source "UserFeedbackSpec.java"


# instance fields
.field private mAlternateScreenshot:Landroid/graphics/Bitmap;

.field private mBucket:Ljava/lang/String;

.field private final mCategoryTag:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

.field private final mCurrentView:Landroid/view/View;

.field private final mLogFilter:Ljava/lang/String;

.field private mLogs:Ljava/lang/String;

.field private final mParentActivity:Landroid/app/Activity;

.field private mProductBinaryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotEnabled:Z

.field private mSelectedAccount:Ljava/lang/String;

.field private mShouldAutoScaleBitmap:Z

.field private mShouldShowPopupOnAnonymousSubmission:Z

.field private mShouldShowPopupOnEmptyDescription:Z

.field private mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "currentView"    # Landroid/view/View;
    .param p4, "logFilter"    # Ljava/lang/String;
    .param p5, "categoryTag"    # Ljava/lang/String;
    .param p6, "bucket"    # Ljava/lang/String;
    .param p7, "screenshotEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    .line 164
    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mContext:Landroid/content/Context;

    .line 165
    if-eqz p3, :cond_0

    .line 166
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 171
    :goto_0
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    .line 176
    iput-boolean p7, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 177
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 178
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 179
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 180
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 181
    iput-object p6, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mBucket:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .line 183
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    .line 184
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldAutoScaleBitmap:Z

    .line 185
    return-void

    .line 169
    :cond_0
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "currentView"    # Landroid/view/View;
    .param p3, "logFilter"    # Ljava/lang/String;
    .param p4, "categoryTag"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "currentView"    # Landroid/view/View;
    .param p3, "logFilter"    # Ljava/lang/String;
    .param p4, "categoryTag"    # Ljava/lang/String;
    .param p5, "bucket"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "currentView"    # Landroid/view/View;
    .param p3, "logFilter"    # Ljava/lang/String;
    .param p4, "categoryTag"    # Ljava/lang/String;
    .param p5, "bucket"    # Ljava/lang/String;
    .param p6, "screenshotEnabled"    # Z

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "logFilter"    # Ljava/lang/String;
    .param p3, "categoryTag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method protected static final defensiveCopyFrom(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 9
    .param p0, "src"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .prologue
    .line 420
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 421
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    .line 422
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBucket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 423
    .local v0, "newSpec":Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 424
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setUiConfigurationOptions(Lcom/google/userfeedback/android/api/UiConfigurationOptions;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 425
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForAnonymousSubmission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->showPopupOnAnonymousSubmission()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForEmptyDescription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->showPopupOnEmptyDescription()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setLogs(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 432
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 433
    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)V

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getSelectedAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setSelectedAccount(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshot(Landroid/graphics/Bitmap;)V

    .line 439
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 443
    :cond_3
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getProductSpecificBinaryData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    .line 444
    .local v8, "psd":Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getData()[B

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    goto :goto_0

    .line 446
    .end local v8    # "psd":Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
    :cond_4
    return-object v0
.end method

.method private getBytes(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 263
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 265
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 267
    .local v1, "data":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "data":[B
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v1

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {p0, p3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBytes(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-object p0
.end method

.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    return-object v0
.end method

.method public getCurrentScreenshot()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 217
    :goto_0
    return-object v1

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldAutoScaleBitmap:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "GFEEDBACK"

    const-string v4, "Error generating screenshot: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 213
    goto :goto_0

    .line 212
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, v2

    .line 217
    goto :goto_0
.end method

.method public getLogFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getLogs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    return-object v0
.end method

.method getProductSpecificBinaryData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    return-object v0
.end method

.method public isScreenshotEnabled()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    return v0
.end method

.method public setAutoScaleBitmap(Z)V
    .locals 0
    .param p1, "autoScale"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldAutoScaleBitmap:Z

    .line 406
    return-void
.end method

.method public setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .param p1, "crashData"    # Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 375
    return-object p0
.end method

.method public setLogs(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .param p1, "logs"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 306
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 307
    return-void
.end method

.method public setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 288
    return-object p0
.end method

.method public setSelectedAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setUiConfigurationOptions(Lcom/google/userfeedback/android/api/UiConfigurationOptions;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .param p1, "config"    # Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .line 388
    return-object p0
.end method

.method shouldShowPopupForAnonymousSubmission()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    return v0
.end method

.method shouldShowPopupForEmptyDescription()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    return v0
.end method

.method public showPopupOnAnonymousSubmission()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 339
    return-object p0
.end method

.method public showPopupOnEmptyDescription()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 355
    return-object p0
.end method
