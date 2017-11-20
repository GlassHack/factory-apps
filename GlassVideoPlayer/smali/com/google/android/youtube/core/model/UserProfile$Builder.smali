.class public final Lcom/google/android/youtube/core/model/UserProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private activityUri:Landroid/net/Uri;

.field private age:I

.field private alternateUri:Landroid/net/Uri;

.field private channelId:Ljava/lang/String;

.field private channelViewsCount:J

.field private displayUsername:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private favoritesCount:I

.field private favoritesUri:Landroid/net/Uri;

.field private gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

.field private isEligibleForChannel:Z

.field private isLightweight:Z

.field private playlistsUri:Landroid/net/Uri;

.field private plusUserId:Ljava/lang/String;

.field private selfUri:Landroid/net/Uri;

.field private subscribersCount:I

.field private subscriptionsCount:I

.field private subscriptionsUri:Landroid/net/Uri;

.field private summary:Ljava/lang/String;

.field private thumbnailUri:Landroid/net/Uri;

.field private uploadViewsCount:J

.field private uploadedCount:I

.field private uploadsUri:Landroid/net/Uri;

.field private uri:Landroid/net/Uri;

.field private username:Ljava/lang/String;

.field private watchHistoryUri:Landroid/net/Uri;

.field private watchLaterUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 199
    sget-object v0, Lcom/google/android/youtube/core/model/UserProfile$Gender;->UNKNOWN:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    .line 188
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    .line 426
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    .line 427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    .line 428
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelId:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->plusUserId:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 434
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Gender;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    .line 435
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 437
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 438
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isEligibleForChannel:Z

    .line 439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 441
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    .line 442
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    .line 444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 445
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    .line 446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    .line 447
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    .line 448
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    .line 449
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 450
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 451
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 452
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->plusUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 403
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 407
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 408
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isEligibleForChannel:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 410
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 411
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 412
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 414
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 415
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 419
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 420
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 421
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 422
    return-void
.end method


# virtual methods
.method public final activityUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    .line 340
    return-object p0
.end method

.method public final age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 265
    return-object p0
.end method

.method public final alternateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    .line 235
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/UserProfile;
    .locals 32

    .prologue
    .line 360
    new-instance v2, Lcom/google/android/youtube/core/model/UserProfile;

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    .line 363
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    .line 364
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 365
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelId:Ljava/lang/String;

    .line 367
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->plusUserId:Ljava/lang/String;

    .line 368
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 369
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 370
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 373
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isEligibleForChannel:Z

    move/from16 v16, v0

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    move/from16 v18, v0

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    move/from16 v20, v0

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    move/from16 v22, v0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    move-object/from16 v26, v0

    .line 385
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    move-wide/from16 v27, v0

    .line 386
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    move-wide/from16 v29, v0

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    move/from16 v31, v0

    .line 360
    invoke-direct/range {v2 .. v31}, Lcom/google/android/youtube/core/model/UserProfile;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/youtube/core/model/UserProfile$Gender;Ljava/lang/String;Landroid/net/Uri;ZZLandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JJI)V

    return-object v2
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public final channelId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 1

    .prologue
    .line 249
    const-string v0, "channel id cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelId:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public final channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 344
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 345
    return-object p0
.end method

.method public final displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public final email(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public final favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 310
    return-object p0
.end method

.method public final favoritesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    .line 305
    return-object p0
.end method

.method public final gender(Lcom/google/android/youtube/core/model/UserProfile$Gender;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    .line 270
    return-object p0
.end method

.method public final isEligibleForChannel(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isEligibleForChannel:Z

    .line 290
    return-object p0
.end method

.method public final isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 285
    return-object p0
.end method

.method public final playlistsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    .line 335
    return-object p0
.end method

.method public final plusUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->plusUserId:Ljava/lang/String;

    .line 255
    return-object p0
.end method

.method public final selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    .line 225
    return-object p0
.end method

.method public final subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 354
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 355
    return-object p0
.end method

.method public final subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 319
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 320
    return-object p0
.end method

.method public final subscriptionsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    .line 315
    return-object p0
.end method

.method public final summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public final thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 280
    return-object p0
.end method

.method public final uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 349
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 350
    return-object p0
.end method

.method public final uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 299
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 300
    return-object p0
.end method

.method public final uploadsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    .line 295
    return-object p0
.end method

.method public final uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    .line 230
    return-object p0
.end method

.method public final username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public final watchHistoryUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    .line 325
    return-object p0
.end method

.method public final watchLaterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    .line 330
    return-object p0
.end method
