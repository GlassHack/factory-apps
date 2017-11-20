.class public Lcom/google/glass/search/VoiceNavigationActivity;
.super Lcom/google/glass/voice/VoiceInputActionActivity;
.source "VoiceNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/VoiceNavigationActivity$2;,
        Lcom/google/glass/search/VoiceNavigationActivity$NoopLocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/VoiceInputActionActivity",
        "<",
        "Lcom/google/glass/voice/VoiceInputActionController;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Lcom/google/glass/location/GlassLocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private sanitizedRecognitionResult:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;-><init>()V

    .line 43
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/VoiceNavigationActivity;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/VoiceNavigationActivity;
    .param p1, "x1"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/search/VoiceNavigationActivity;->onOpenEndedInputEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    return-void
.end method

.method static createGoogleXLocationFromActionLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3
    .param p0, "destination"    # Lcom/google/majel/proto/ActionV2Protos$Location;

    .prologue
    .line 320
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 321
    .local v0, "location":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 333
    :cond_3
    return-object v0
.end method

.method private static getNavigationIntentFromMapActionExtension(Lcom/google/majel/proto/PeanutProtos$Peanut;)Landroid/content/Intent;
    .locals 13
    .param p0, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;

    .prologue
    .line 295
    const/4 v11, 0x0

    .line 296
    .local v11, "navigationIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v0, :cond_0

    move-object v12, v11

    .line 312
    .end local v11    # "navigationIntent":Landroid/content/Intent;
    .local v12, "navigationIntent":Landroid/content/Intent;
    :goto_0
    return-object v12

    .line 299
    .end local v12    # "navigationIntent":Landroid/content/Intent;
    .restart local v11    # "navigationIntent":Landroid/content/Intent;
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v7, v0, v9

    .line 302
    .local v7, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    if-eqz v0, :cond_1

    .line 303
    iget-object v10, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 304
    .local v10, "ma":Lcom/google/majel/proto/ActionV2Protos$MapAction;
    iget-object v0, v10, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 305
    iget-object v0, v10, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 306
    .local v8, "destination":Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v2

    .line 308
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v4

    const-string v6, "24"

    .line 306
    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 299
    .end local v8    # "destination":Lcom/google/majel/proto/ActionV2Protos$Location;
    .end local v10    # "ma":Lcom/google/majel/proto/ActionV2Protos$MapAction;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v7    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_2
    move-object v12, v11

    .line 312
    .end local v11    # "navigationIntent":Landroid/content/Intent;
    .restart local v12    # "navigationIntent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getNavigationIntentFromPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Landroid/content/Intent;
    .locals 15
    .param p0, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;
    .param p1, "isFromSearch"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v0, :cond_1

    .line 238
    const/4 v10, 0x0

    .line 282
    :cond_0
    :goto_0
    return-object v10

    .line 240
    :cond_1
    const/4 v12, 0x0

    .line 241
    .local v12, "navigationIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    .line 242
    .local v13, "originalDescription":Ljava/lang/String;
    const/4 v8, 0x0

    .line 243
    .local v8, "destination":Lcom/google/majel/proto/ActionV2Protos$Location;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v11, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Location;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v0, v0

    if-ge v9, v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v7, v0, v9

    .line 246
    .local v7, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    if-nez v0, :cond_3

    .line 244
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 250
    :cond_3
    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    iget-object v14, v0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 254
    .local v14, "tmpDestination":Lcom/google/majel/proto/ActionV2Protos$Location;
    :goto_3
    invoke-static {v14}, Lcom/google/glass/search/VoiceNavigationActivity;->createGoogleXLocationFromActionLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v14}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v13

    .line 256
    if-nez v8, :cond_2

    .line 258
    move-object v8, v14

    goto :goto_2

    .line 250
    .end local v14    # "tmpDestination":Lcom/google/majel/proto/ActionV2Protos$Location;
    :cond_4
    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    iget-object v14, v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_3

    .line 264
    .end local v7    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_5
    if-eqz p1, :cond_8

    const-string v6, "2"

    .line 268
    .local v6, "source":Ljava/lang/String;
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 270
    const/4 v0, 0x1

    invoke-static {v11, v13, v6, v0}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    .line 272
    .local v10, "listIntent":Landroid/content/Intent;
    if-nez v10, :cond_0

    .line 277
    .end local v10    # "listIntent":Landroid/content/Intent;
    :cond_6
    if-eqz v8, :cond_7

    .line 278
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v2

    .line 280
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v4

    .line 278
    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    :cond_7
    move-object v10, v12

    .line 282
    goto :goto_0

    .line 264
    .end local v6    # "source":Ljava/lang/String;
    :cond_8
    const-string v6, "24"

    goto :goto_4
.end method

.method private handlePassalongEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/OpenEndedInputEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/OpenEndedInputEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .line 103
    .local v0, "p":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    invoke-direct {p0, v0}, Lcom/google/glass/search/VoiceNavigationActivity;->onOpenEndedInputEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0

    .line 105
    .end local v0    # "p":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    :cond_0
    return-void
.end method

.method private launchNavigationActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "navigationIntent"    # Landroid/content/Intent;

    .prologue
    .line 197
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method private onFinalResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawResult"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/glass/voice/VoiceUtils;->stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    .line 170
    return-void
.end method

.method private onOpenEndedInputEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 337
    sget-object v0, Lcom/google/glass/search/VoiceNavigationActivity$2;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 339
    :pswitch_0
    const-string v0, "protoBytes"

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/search/VoiceNavigationActivity;->onActionResponse([B)V

    goto :goto_0

    .line 342
    :pswitch_1
    const-string v0, "finalText"

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/search/VoiceNavigationActivity;->onFinalResult(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->showDone()V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendNavigationIntentFromQuery(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "sanitizedRecognitionResult"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No recognition result"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x1

    .line 133
    .local v1, "showLocation":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "24"

    .line 132
    invoke-static {v2, v1, v3}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, "navigationIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/google/glass/search/SearchApplication;->from(Landroid/content/Context;)Lcom/google/glass/search/SearchApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/search/SearchApplication;->isNavigationAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Action has navigation result(s), but device is not connected to MyGlass"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->showDirectionsNotAvailableError(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Action has navigation result(s), going to navigation instead of search results"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 145
    invoke-direct {p0, v0}, Lcom/google/glass/search/VoiceNavigationActivity;->launchNavigationActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0, v5, v5}, Lcom/google/glass/search/VoiceNavigationActivity;->overridePendingTransition(II)V

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->finish()V

    goto :goto_0
.end method

.method public static showDirectionsNotAvailableError(Lcom/google/glass/app/GlassActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/google/glass/app/GlassActivity;

    .prologue
    const/4 v1, 0x1

    .line 159
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/search/R$drawable;->ic_warning_150:I

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/search/R$string;->voice_navigation_directions_not_available:I

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/search/R$string;->error_get_my_glass_for_location:I

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected createController()Lcom/google/glass/voice/VoiceInputActionController;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    new-array v0, v5, [Lcom/google/glass/voice/InputMode;

    .line 69
    invoke-static {}, Lcom/google/glass/search/VoiceNavigationActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget v2, Lcom/google/glass/search/R$string;->voice_navigation_speak_now:I

    .line 71
    invoke-virtual {p0, v2}, Lcom/google/glass/search/VoiceNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget v2, Lcom/google/glass/search/R$string;->open_ended_decorator_get_directions:I

    new-array v3, v5, [Ljava/lang/Object;

    sget v4, Lcom/google/glass/search/R$string;->voice_label_get_directions:I

    .line 73
    invoke-virtual {p0, v4}, Lcom/google/glass/search/VoiceNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 72
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/search/VoiceNavigationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/GetDirectionsResultSanitizer;

    invoke-direct {v2}, Lcom/google/glass/voice/GetDirectionsResultSanitizer;-><init>()V

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setResultSanitizer(Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v5}, Lcom/google/glass/voice/InputMode;->setNavigationResponseExpected(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    new-instance v2, Lcom/google/glass/search/VoiceNavigationActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/search/VoiceNavigationActivity$1;-><init>(Lcom/google/glass/search/VoiceNavigationActivity;)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v5}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    aput-object v1, v0, v6

    .line 68
    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputActionController;->createSimpleController([Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    return-object v0
.end method

.method onActionResponse([B)V
    .locals 7
    .param p1, "response"    # [B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, "navigationIntent":Landroid/content/Intent;
    :try_start_0
    invoke-static {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v2

    .line 180
    .local v2, "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/search/VoiceNavigationActivity;->getNavigationIntentFromPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Landroid/content/Intent;

    move-result-object v1

    .line 181
    if-nez v1, :cond_0

    .line 182
    invoke-static {v2}, Lcom/google/glass/search/VoiceNavigationActivity;->getNavigationIntentFromMapActionExtension(Lcom/google/majel/proto/PeanutProtos$Peanut;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    .end local v2    # "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 190
    invoke-direct {p0, v1}, Lcom/google/glass/search/VoiceNavigationActivity;->launchNavigationActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0, v6, v6}, Lcom/google/glass/search/VoiceNavigationActivity;->overridePendingTransition(II)V

    .line 192
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->finish()V

    .line 194
    :cond_1
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    iget-object v3, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "unable to parse action peanut"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/glass/voice/VoiceInputActionActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 89
    sget-object v2, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 90
    .local v1, "navigation":Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, v1}, Lcom/google/glass/search/VoiceNavigationActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 91
    new-instance v2, Lcom/google/glass/search/VoiceNavigationActivity$NoopLocationListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/glass/search/VoiceNavigationActivity$NoopLocationListener;-><init>(Lcom/google/glass/search/VoiceNavigationActivity$1;)V

    iput-object v2, p0, Lcom/google/glass/search/VoiceNavigationActivity;->locationListener:Landroid/location/LocationListener;

    .line 92
    invoke-static {}, Lcom/google/glass/location/GlassLocationManager;->getInstance()Lcom/google/glass/location/GlassLocationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/search/VoiceNavigationActivity;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/OpenEndedInputEvent;>;"
    invoke-direct {p0, v0}, Lcom/google/glass/search/VoiceNavigationActivity;->handlePassalongEvents(Ljava/util/List;)V

    .line 99
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/OpenEndedInputEvent;>;"
    :cond_0
    return-void
.end method

.method public onPauseInternal()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->onPauseInternal()V

    .line 118
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    iget-object v1, p0, Lcom/google/glass/search/VoiceNavigationActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/location/GlassLocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 119
    return-void
.end method

.method public onResumeInternal()V
    .locals 6

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->onResumeInternal()V

    .line 110
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/search/VoiceNavigationActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/location/GlassLocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 113
    return-void
.end method

.method showDone()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showDone - isMessageShowing true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceNavigationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showDone - finishing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/glass/search/VoiceNavigationActivity;->sendNavigationIntentFromQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showDone - empty finalRecognitionResult"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/search/R$string;->voice_search_no_answer:I

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/search/R$drawable;->ic_cloud_sad_150:I

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto :goto_0
.end method
