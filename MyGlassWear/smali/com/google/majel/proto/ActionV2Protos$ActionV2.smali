.class public final Lcom/google/majel/proto/ActionV2Protos$ActionV2;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionV2"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;


# instance fields
.field public actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

.field public addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

.field public addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

.field public agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

.field public alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

.field public atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

.field private bitField0_:I

.field public callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

.field public callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

.field public deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

.field public directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

.field private eligibleForNoResultsUi_:Z

.field public emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

.field public getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

.field public gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

.field public helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

.field public intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

.field public interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

.field public javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

.field public locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

.field public mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

.field public mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

.field public messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

.field public metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

.field public modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

.field public navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

.field public openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

.field public openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

.field public phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

.field public playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

.field public readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

.field public reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

.field public sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

.field public searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

.field public selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

.field public setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

.field public showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

.field public showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

.field public showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

.field public soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

.field public soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

.field public stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

.field public unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

.field public updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->clear()Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 245
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v0, :cond_1

    .line 86
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 248
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    .line 249
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    .line 250
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    .line 251
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    .line 252
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    .line 253
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 254
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 255
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    .line 256
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    .line 257
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 258
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 259
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 260
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 261
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 262
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 263
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 264
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 265
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 266
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 267
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 268
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    .line 269
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    .line 270
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    .line 271
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    .line 272
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    .line 273
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 274
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 275
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    .line 276
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 277
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    .line 278
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    .line 279
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    .line 280
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    .line 281
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    .line 282
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    .line 283
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    .line 284
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    .line 285
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    .line 286
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    .line 287
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    .line 288
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    .line 289
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    .line 290
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    .line 291
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->cachedSize:I

    .line 293
    return-object p0
.end method

.method public clearEligibleForNoResultsUi()Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    .line 113
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public getEligibleForNoResultsUi()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 432
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 433
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 438
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    if-eqz v1, :cond_2

    .line 442
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    if-eqz v1, :cond_3

    .line 446
    const v1, 0x1824892

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    if-eqz v1, :cond_4

    .line 450
    const v1, 0x182498a

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-eqz v1, :cond_5

    .line 454
    const v1, 0x1827e48

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    if-eqz v1, :cond_6

    .line 458
    const v1, 0x183bed6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    if-eqz v1, :cond_7

    .line 462
    const v1, 0x183f22d

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    if-eqz v1, :cond_8

    .line 466
    const v1, 0x18414d5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    if-eqz v1, :cond_9

    .line 470
    const v1, 0x18414f1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    if-eqz v1, :cond_a

    .line 474
    const v1, 0x184162a

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    if-eqz v1, :cond_b

    .line 478
    const v1, 0x18417dd

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    :cond_b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    if-eqz v1, :cond_c

    .line 482
    const v1, 0x184289f

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_c
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    if-eqz v1, :cond_d

    .line 486
    const v1, 0x18432fb

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    if-eqz v1, :cond_e

    .line 490
    const v1, 0x1845ea9

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_e
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    if-eqz v1, :cond_f

    .line 494
    const v1, 0x184de42

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_f
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    if-eqz v1, :cond_10

    .line 498
    const v1, 0x18f9833

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_10
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    if-eqz v1, :cond_11

    .line 502
    const v1, 0x191f640

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    :cond_11
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    if-eqz v1, :cond_12

    .line 506
    const v1, 0x1b053f7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :cond_12
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    if-eqz v1, :cond_13

    .line 510
    const v1, 0x1b52dc5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_13
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    if-eqz v1, :cond_14

    .line 514
    const v1, 0x1b6118f

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    :cond_14
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    if-eqz v1, :cond_15

    .line 518
    const v1, 0x1b63172

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    :cond_15
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    if-eqz v1, :cond_16

    .line 522
    const v1, 0x1b9b91d

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    :cond_16
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    if-eqz v1, :cond_17

    .line 526
    const v1, 0x2091c9d

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    :cond_17
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    if-eqz v1, :cond_18

    .line 530
    const v1, 0x226ab93

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 533
    :cond_18
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v1, :cond_19

    .line 534
    const v1, 0x23ca0af

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 537
    :cond_19
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    if-eqz v1, :cond_1a

    .line 538
    const v1, 0x23cf0c5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_1a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    if-eqz v1, :cond_1b

    .line 542
    const v1, 0x282fe70

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_1b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    if-eqz v1, :cond_1c

    .line 546
    const v1, 0x2d70ee3    # 3.1599955E-37f

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_1c
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    if-eqz v1, :cond_1d

    .line 550
    const v1, 0x2db61f1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_1d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    if-eqz v1, :cond_1e

    .line 554
    const v1, 0x2df41d0

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_1e
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    if-eqz v1, :cond_1f

    .line 558
    const v1, 0x2edbe1e

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_1f
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    if-eqz v1, :cond_20

    .line 562
    const v1, 0x2f39ae3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_20
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    if-eqz v1, :cond_21

    .line 566
    const v1, 0x2f8c199

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_21
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    if-eqz v1, :cond_22

    .line 570
    const v1, 0x304c29c

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_22
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    if-eqz v1, :cond_23

    .line 574
    const v1, 0x313af44

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    :cond_23
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    if-eqz v1, :cond_24

    .line 578
    const v1, 0x31c0668

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_24
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    if-eqz v1, :cond_25

    .line 582
    const v1, 0x31c53f8

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    :cond_25
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    if-eqz v1, :cond_26

    .line 586
    const v1, 0x321cbac

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :cond_26
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    if-eqz v1, :cond_27

    .line 590
    const v1, 0x32eeca7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_27
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    if-eqz v1, :cond_28

    .line 594
    const v1, 0x35e59bf

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_28
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    if-eqz v1, :cond_29

    .line 598
    const v1, 0x3b7de0f

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_29
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    if-eqz v1, :cond_2a

    .line 602
    const v1, 0x3cbebaf

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    :cond_2a
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->cachedSize:I

    .line 606
    return v0
.end method

.method public hasEligibleForNoResultsUi()Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 615
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 619
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    :sswitch_0
    return-object p0

    .line 625
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    if-nez v1, :cond_1

    .line 626
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 632
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    .line 633
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    goto :goto_0

    .line 637
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    if-nez v1, :cond_2

    .line 638
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 644
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    if-nez v1, :cond_3

    .line 645
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 651
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    if-nez v1, :cond_4

    .line 652
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MapAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 654
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 658
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v1, :cond_5

    .line 659
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 661
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 665
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    if-nez v1, :cond_6

    .line 666
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    .line 668
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 672
    :sswitch_8
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    if-nez v1, :cond_7

    .line 673
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    .line 675
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 679
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    if-nez v1, :cond_8

    .line 680
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 682
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 686
    :sswitch_a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    if-nez v1, :cond_9

    .line 687
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 689
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 693
    :sswitch_b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    if-nez v1, :cond_a

    .line 694
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 696
    :cond_a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 700
    :sswitch_c
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    if-nez v1, :cond_b

    .line 701
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 703
    :cond_b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 707
    :sswitch_d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    if-nez v1, :cond_c

    .line 708
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 710
    :cond_c
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 714
    :sswitch_e
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    if-nez v1, :cond_d

    .line 715
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 717
    :cond_d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 721
    :sswitch_f
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    if-nez v1, :cond_e

    .line 722
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 724
    :cond_e
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 728
    :sswitch_10
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    if-nez v1, :cond_f

    .line 729
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 731
    :cond_f
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 735
    :sswitch_11
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    if-nez v1, :cond_10

    .line 736
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 738
    :cond_10
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 742
    :sswitch_12
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    if-nez v1, :cond_11

    .line 743
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 745
    :cond_11
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 749
    :sswitch_13
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    if-nez v1, :cond_12

    .line 750
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 752
    :cond_12
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 756
    :sswitch_14
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    if-nez v1, :cond_13

    .line 757
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    .line 759
    :cond_13
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 763
    :sswitch_15
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    if-nez v1, :cond_14

    .line 764
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    .line 766
    :cond_14
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 770
    :sswitch_16
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    if-nez v1, :cond_15

    .line 771
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    .line 773
    :cond_15
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 777
    :sswitch_17
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    if-nez v1, :cond_16

    .line 778
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    .line 780
    :cond_16
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 784
    :sswitch_18
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    if-nez v1, :cond_17

    .line 785
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    .line 787
    :cond_17
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 791
    :sswitch_19
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    if-nez v1, :cond_18

    .line 792
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 794
    :cond_18
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 798
    :sswitch_1a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v1, :cond_19

    .line 799
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 801
    :cond_19
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 805
    :sswitch_1b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    if-nez v1, :cond_1a

    .line 806
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    .line 808
    :cond_1a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 812
    :sswitch_1c
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    if-nez v1, :cond_1b

    .line 813
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 815
    :cond_1b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 819
    :sswitch_1d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    if-nez v1, :cond_1c

    .line 820
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    .line 822
    :cond_1c
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 826
    :sswitch_1e
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    if-nez v1, :cond_1d

    .line 827
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    .line 829
    :cond_1d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 833
    :sswitch_1f
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    if-nez v1, :cond_1e

    .line 834
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    .line 836
    :cond_1e
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 840
    :sswitch_20
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    if-nez v1, :cond_1f

    .line 841
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    .line 843
    :cond_1f
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 847
    :sswitch_21
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    if-nez v1, :cond_20

    .line 848
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    .line 850
    :cond_20
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 854
    :sswitch_22
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    if-nez v1, :cond_21

    .line 855
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    .line 857
    :cond_21
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 861
    :sswitch_23
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    if-nez v1, :cond_22

    .line 862
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    .line 864
    :cond_22
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 868
    :sswitch_24
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    if-nez v1, :cond_23

    .line 869
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    .line 871
    :cond_23
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 875
    :sswitch_25
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    if-nez v1, :cond_24

    .line 876
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    .line 878
    :cond_24
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 882
    :sswitch_26
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    if-nez v1, :cond_25

    .line 883
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$SearchAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    .line 885
    :cond_25
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 889
    :sswitch_27
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    if-nez v1, :cond_26

    .line 890
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    .line 892
    :cond_26
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 896
    :sswitch_28
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    if-nez v1, :cond_27

    .line 897
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$IntentAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    .line 899
    :cond_27
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 903
    :sswitch_29
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    if-nez v1, :cond_28

    .line 904
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ModularAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    .line 906
    :cond_28
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 910
    :sswitch_2a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    if-nez v1, :cond_29

    .line 911
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    .line 913
    :cond_29
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 917
    :sswitch_2b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    if-nez v1, :cond_2a

    .line 918
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    .line 920
    :cond_2a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 615
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x50 -> :sswitch_2
        0x5a -> :sswitch_3
        0xc124492 -> :sswitch_4
        0xc124c52 -> :sswitch_5
        0xc13f242 -> :sswitch_6
        0xc1df6b2 -> :sswitch_7
        0xc1f916a -> :sswitch_8
        0xc20a6aa -> :sswitch_9
        0xc20a78a -> :sswitch_a
        0xc20b152 -> :sswitch_b
        0xc20beea -> :sswitch_c
        0xc2144fa -> :sswitch_d
        0xc2197da -> :sswitch_e
        0xc22f54a -> :sswitch_f
        0xc26f212 -> :sswitch_10
        0xc7cc19a -> :sswitch_11
        0xc8fb202 -> :sswitch_12
        0xd829fba -> :sswitch_13
        0xda96e2a -> :sswitch_14
        0xdb08c7a -> :sswitch_15
        0xdb18b92 -> :sswitch_16
        0xdcdc8ea -> :sswitch_17
        0x1048e4ea -> :sswitch_18
        0x11355c9a -> :sswitch_19
        0x11e5057a -> :sswitch_1a
        0x11e7862a -> :sswitch_1b
        0x1417f382 -> :sswitch_1c
        0x16b8771a -> :sswitch_1d
        0x16db0f8a -> :sswitch_1e
        0x16fa0e82 -> :sswitch_1f
        0x176df0f2 -> :sswitch_20
        0x179cd71a -> :sswitch_21
        0x17c60cca -> :sswitch_22
        0x182614e2 -> :sswitch_23
        0x189d7a22 -> :sswitch_24
        0x18e03342 -> :sswitch_25
        0x18e29fc2 -> :sswitch_26
        0x190e5d62 -> :sswitch_27
        0x1977653a -> :sswitch_28
        0x1af2cdfa -> :sswitch_29
        0x1dbef07a -> :sswitch_2a
        0x1e5f5d7a -> :sswitch_2b
    .end sparse-switch
.end method

.method public setEligibleForNoResultsUi(Z)Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    .line 105
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    .line 106
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 302
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 303
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->eligibleForNoResultsUi_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    if-eqz v0, :cond_2

    .line 306
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    if-eqz v0, :cond_3

    .line 309
    const v0, 0x1824892

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    if-eqz v0, :cond_4

    .line 312
    const v0, 0x182498a

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mapActionExtension:Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-eqz v0, :cond_5

    .line 315
    const v0, 0x1827e48

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    if-eqz v0, :cond_6

    .line 318
    const v0, 0x183bed6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    if-eqz v0, :cond_7

    .line 321
    const v0, 0x183f22d

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showCalendarEventActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    if-eqz v0, :cond_8

    .line 324
    const v0, 0x18414d5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    if-eqz v0, :cond_9

    .line 327
    const v0, 0x18414f1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 329
    :cond_9
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    if-eqz v0, :cond_a

    .line 330
    const v0, 0x184162a

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openApplicationActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 332
    :cond_a
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    if-eqz v0, :cond_b

    .line 333
    const v0, 0x18417dd

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->playMediaActionExtension:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 335
    :cond_b
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    if-eqz v0, :cond_c

    .line 336
    const v0, 0x184289f

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->openURLActionExtension:Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 338
    :cond_c
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    if-eqz v0, :cond_d

    .line 339
    const v0, 0x18432fb

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->selfNoteActionExtension:Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 341
    :cond_d
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    if-eqz v0, :cond_e

    .line 342
    const v0, 0x1845ea9

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->updateSocialNetworkActionExtension:Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 344
    :cond_e
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    if-eqz v0, :cond_f

    .line 345
    const v0, 0x184de42

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->setAlarmActionExtension:Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 347
    :cond_f
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    if-eqz v0, :cond_10

    .line 348
    const v0, 0x18f9833

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emailActionExtension:Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 350
    :cond_10
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    if-eqz v0, :cond_11

    .line 351
    const v0, 0x191f640

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callBusinessActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 353
    :cond_11
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    if-eqz v0, :cond_12

    .line 354
    const v0, 0x1b053f7

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->helpActionExtension:Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 356
    :cond_12
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    if-eqz v0, :cond_13

    .line 357
    const v0, 0x1b52dc5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getTrafficConditionsExtension:Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 359
    :cond_13
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    if-eqz v0, :cond_14

    .line 360
    const v0, 0x1b6118f

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showStreetViewExtension:Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 362
    :cond_14
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    if-eqz v0, :cond_15

    .line 363
    const v0, 0x1b63172

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->unsupportedActionExtension:Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 365
    :cond_15
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    if-eqz v0, :cond_16

    .line 366
    const v0, 0x1b9b91d

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->atHomePowerControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 368
    :cond_16
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    if-eqz v0, :cond_17

    .line 369
    const v0, 0x2091c9d

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 371
    :cond_17
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    if-eqz v0, :cond_18

    .line 372
    const v0, 0x226ab93

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->showContactInformationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 374
    :cond_18
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v0, :cond_19

    .line 375
    const v0, 0x23ca0af

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->actionV2Extension:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 377
    :cond_19
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    if-eqz v0, :cond_1a

    .line 378
    const v0, 0x23cf0c5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->gogglesActionExtension:Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 380
    :cond_1a
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    if-eqz v0, :cond_1b

    .line 381
    const v0, 0x282fe70

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->addReminderActionExtension:Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 383
    :cond_1b
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    if-eqz v0, :cond_1c

    .line 384
    const v0, 0x2d70ee3    # 3.1599955E-37f

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->callMyVoicemailActionExtension:Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 386
    :cond_1c
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    if-eqz v0, :cond_1d

    .line 387
    const v0, 0x2db61f1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->deferredActionExtension:Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 389
    :cond_1d
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    if-eqz v0, :cond_1e

    .line 390
    const v0, 0x2df41d0

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->agendaActionExtension:Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    :cond_1e
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    if-eqz v0, :cond_1f

    .line 393
    const v0, 0x2edbe1e

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->stopNavigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 395
    :cond_1f
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    if-eqz v0, :cond_20

    .line 396
    const v0, 0x2f39ae3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->soundSearchTvActionExtension:Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 398
    :cond_20
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    if-eqz v0, :cond_21

    .line 399
    const v0, 0x2f8c199

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->mediaControlActionExtension:Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 401
    :cond_21
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    if-eqz v0, :cond_22

    .line 402
    const v0, 0x304c29c

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->javaScriptCallActionExtension:Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 404
    :cond_22
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    if-eqz v0, :cond_23

    .line 405
    const v0, 0x313af44

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->reserveRestaurantActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 407
    :cond_23
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    if-eqz v0, :cond_24

    .line 408
    const v0, 0x31c0668

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->alternativeInterpretationActionExtension:Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 410
    :cond_24
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    if-eqz v0, :cond_25

    .line 411
    const v0, 0x31c53f8

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->searchActionExtension:Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 413
    :cond_25
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    if-eqz v0, :cond_26

    .line 414
    const v0, 0x321cbac

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->readNotificationActionExtension:Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 416
    :cond_26
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    if-eqz v0, :cond_27

    .line 417
    const v0, 0x32eeca7

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->intentActionExtension:Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 419
    :cond_27
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    if-eqz v0, :cond_28

    .line 420
    const v0, 0x35e59bf

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 422
    :cond_28
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    if-eqz v0, :cond_29

    .line 423
    const v0, 0x3b7de0f

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->messageSearchActionExtension:Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 425
    :cond_29
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    if-eqz v0, :cond_2a

    .line 426
    const v0, 0x3cbebaf

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->locateDeviceActionExtension:Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 428
    :cond_2a
    return-void
.end method
