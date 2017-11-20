.class public Lcom/google/android/speech/internal/RecognizerEventProcessor;
.super Ljava/lang/Object;
.source "RecognizerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/internal/RecognizerEventProcessor$GrammarConstants;
    }
.end annotation


# static fields
.field private static INVALID_PHONE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecognizerEventProcessor"


# instance fields
.field private final mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private final mCombinedResultGenerator:Lcom/google/android/speech/internal/CombinedResultGenerator;

.field private final mMode:Lcom/google/android/speech/embedded/Greco3Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->INVALID_PHONE_TYPE:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 1
    .param p1, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mMode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 73
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/callback/RecognitionEngineCallback;

    iput-object v0, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 74
    new-instance v0, Lcom/google/android/speech/internal/CombinedResultGenerator;

    invoke-direct {v0}, Lcom/google/android/speech/internal/CombinedResultGenerator;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCombinedResultGenerator:Lcom/google/android/speech/internal/CombinedResultGenerator;

    .line 75
    return-void
.end method

.method private static addCombinedResultsTo(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 2
    .param p0, "other"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 351
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 353
    .local v0, "builder":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    :try_start_0
    invoke-static {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 354
    invoke-static {p0, v0}, Lcom/google/android/shared/util/ProtoUtils;->copyOf(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iput-object v1, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 357
    return-object v0

    .line 355
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static buildPhoneAction(Ljava/lang/String;ID)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 10
    .param p0, "contactName"    # Ljava/lang/String;
    .param p1, "phoneType"    # I
    .param p2, "weight"    # D

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 294
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    .line 295
    .local v0, "contactAction":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 296
    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->setParsedName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 298
    new-instance v1, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;-><init>()V

    .line 299
    .local v1, "embeddedActionContact":Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    invoke-virtual {v1, p2, p3}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->setGrammarWeight(D)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 301
    iput-object v1, v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 307
    const-string v5, "RecognizerEventProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "n="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->elideContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 310
    sget v5, Lcom/google/android/speech/internal/RecognizerEventProcessor;->INVALID_PHONE_TYPE:I

    if-eq p1, v5, :cond_1

    .line 311
    new-instance v3, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v3}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    .line 312
    .local v3, "phoneNumberBuilder":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    invoke-static {p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->getServerTypeStringFromAndroidType(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {v3, v4}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 316
    :cond_0
    new-array v5, v9, [Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    aput-object v3, v5, v8

    iput-object v5, v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 319
    .end local v3    # "phoneNumberBuilder":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v2}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    .line 320
    .local v2, "phoneAction":Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    new-array v5, v9, [Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aput-object v0, v5, v8

    iput-object v5, v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 322
    return-object v2
.end method

.method private static createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;
    .locals 2
    .param p0, "s3Response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/shared/speech/S3RecognitionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/shared/speech/S3RecognitionResponse;-><init>(ILcom/google/speech/s3/S3$S3Response;)V

    return-object v0
.end method

.method private dressActionV2InMajelResponseAndThenDressThatInAnS3Response(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/speech/s3/S3$S3Response;
    .locals 5
    .param p1, "action"    # Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 337
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    .line 338
    .local v1, "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setPrimaryType(I)Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 339
    new-array v2, v3, [Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aput-object p1, v2, v4

    iput-object v2, v1, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 342
    invoke-virtual {v1, v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setSearchResultsUnnecessary(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 344
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    .line 345
    .local v0, "majelBuilder":Lcom/google/majel/proto/MajelProtos$MajelResponse;
    new-array v2, v3, [Lcom/google/majel/proto/PeanutProtos$Peanut;

    aput-object v1, v2, v4

    iput-object v2, v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 347
    invoke-static {v0}, Lcom/google/android/s3/message/S3ResponseBuilder;->createWithMajel(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    return-object v2
.end method

.method private static elideContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "contactName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getServerTypeStringFromAndroidType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 365
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 366
    const-string v0, "home"

    .line 372
    :goto_0
    return-object v0

    .line 367
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 368
    const-string/jumbo v0, "work"

    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 370
    const-string v0, "cell"

    goto :goto_0

    .line 372
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCallCommand([Ljava/lang/String;I)Lcom/google/speech/s3/S3$S3Response;
    .locals 11
    .param p1, "interps"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v7, "spokenPhoneNumber":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 221
    .local v0, "contactName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 222
    .local v1, "contactWeight":D
    sget v6, Lcom/google/android/speech/internal/RecognizerEventProcessor;->INVALID_PHONE_TYPE:I

    .line 223
    .local v6, "phoneType":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_3

    .line 224
    aget-object v4, p1, v3

    .line 226
    .local v4, "interpEntry":Ljava/lang/String;
    const-string v8, "XX_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 227
    invoke-static {v4}, Lcom/google/android/speech/grammar/GrammarBuilder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v4}, Lcom/google/android/speech/grammar/GrammarBuilder;->decodeWeight(Ljava/lang/String;)D

    move-result-wide v1

    .line 231
    :cond_0
    const-string v8, "_p"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 233
    :try_start_0
    const-string v8, "_p"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 240
    :cond_1
    :goto_1
    const-string v8, "_d"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 241
    const-string v8, "_d"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v5

    .line 236
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "RecognizerEventProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid semantic tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 246
    .end local v4    # "interpEntry":Ljava/lang/String;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    if-eqz v0, :cond_4

    .line 248
    invoke-direct {p0, v0, v1, v2, v6}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->handleContactName(Ljava/lang/String;DI)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v8

    .line 255
    :goto_2
    return-object v8

    .line 250
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 252
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->handleSpokenPhoneNumber(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v8

    goto :goto_2

    .line 255
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleContactName(Ljava/lang/String;DI)Lcom/google/speech/s3/S3$S3Response;
    .locals 5
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "weight"    # D
    .param p4, "phoneType"    # I

    .prologue
    .line 279
    const-string v2, "RecognizerEventProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#handleContactName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 281
    invoke-static {p1, p4, p2, p3}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->buildPhoneAction(Ljava/lang/String;ID)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    move-result-object v1

    .line 283
    .local v1, "phoneAction":Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    .line 284
    .local v0, "actionBuilder":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    new-instance v2, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-direct {v2}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;-><init>()V

    iput-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    .line 285
    iget-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->interactionInfo:Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->setExecute(Z)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    .line 286
    iput-object v1, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 288
    invoke-direct {p0, v0}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->dressActionV2InMajelResponseAndThenDressThatInAnS3Response(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    return-object v2
.end method

.method private handleSpokenPhoneNumber(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;
    .locals 7
    .param p1, "spokenPhoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    const-string v2, "RecognizerEventProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#handleSpokenPhoneNumber :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 265
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    .line 266
    .local v1, "phoneNumber":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    invoke-virtual {v1, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->setNumber(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 268
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    .line 269
    .local v0, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    new-instance v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v2}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    iput-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 270
    iget-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    new-array v3, v6, [Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    iput-object v3, v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 271
    iget-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    iget-object v2, v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    new-instance v3, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v3}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v3, v2, v5

    .line 272
    iget-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    iget-object v2, v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v2, v2, v5

    new-array v3, v6, [Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    iput-object v3, v2, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 273
    iget-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    iget-object v2, v2, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    aput-object v1, v2, v5

    .line 275
    invoke-direct {p0, v0}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->dressActionV2InMajelResponseAndThenDressThatInAnS3Response(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    return-object v2
.end method

.method private processEventInDictationAndHotwordMode(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCombinedResultGenerator:Lcom/google/android/speech/internal/CombinedResultGenerator;

    invoke-virtual {v1, p1}, Lcom/google/android/speech/internal/CombinedResultGenerator;->update(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 136
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCombinedResultGenerator:Lcom/google/android/speech/internal/CombinedResultGenerator;

    invoke-virtual {v1}, Lcom/google/android/speech/internal/CombinedResultGenerator;->getCombinedResultEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    .line 138
    .local v0, "combined":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-static {v0}, Lcom/google/android/s3/message/S3ResponseBuilder;->createInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-static {}, Lcom/google/android/s3/message/S3ResponseBuilder;->createDone()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 146
    .end local v0    # "combined":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-static {p1}, Lcom/google/android/s3/message/S3ResponseBuilder;->createInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    goto :goto_0
.end method

.method private processEventInGrammarMode(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    const-string v1, "RecognizerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#processEventInGrammarMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->processSemanticInterpretations(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    .line 106
    .local v0, "processed":Lcom/google/speech/s3/S3$S3Response;
    if-eqz v0, :cond_1

    .line 107
    const-string v1, "RecognizerEventProcessor"

    const-string v2, "Dispatching semantic interp / final result"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-static {p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->addCombinedResultsTo(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/s3/message/S3ResponseBuilder;->createInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-static {v0}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-static {}, Lcom/google/android/s3/message/S3ResponseBuilder;->createDone()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->createResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 130
    .end local v0    # "processed":Lcom/google/speech/s3/S3$S3Response;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "processed":Lcom/google/speech/s3/S3$S3Response;
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v2, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;

    invoke-direct {v2, v5}, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method private processSemanticInterpretations(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 10
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 153
    iget-object v6, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v5

    .line 157
    :cond_1
    iget-object v4, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 158
    .local v4, "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    iget-object v6, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v1, v6

    .line 159
    .local v1, "hypothesisCount":I
    const/4 v6, 0x1

    if-lt v1, v6, :cond_0

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 164
    iget-object v6, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v0, v6, v2

    .line 165
    .local v0, "h":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    iget-object v6, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-eqz v6, :cond_2

    .line 166
    iget-object v3, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 170
    .local v3, "r":Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    iget-object v5, v3, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    invoke-direct {p0, v5, p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->processSemanticInterpretations([Lspeech/InterpretationProto$Interpretation;Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v5

    goto :goto_0

    .line 163
    .end local v3    # "r":Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "h":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_3
    const-string v6, "RecognizerEventProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No semantic result, spoken text: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processSemanticInterpretations([Lspeech/InterpretationProto$Interpretation;Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 9
    .param p1, "interpretationList"    # [Lspeech/InterpretationProto$Interpretation;
    .param p2, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 183
    array-length v5, p1

    if-eqz v5, :cond_0

    aget-object v5, p1, v8

    iget-object v5, v5, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v4

    .line 187
    :cond_1
    aget-object v5, p1, v8

    iget-object v5, v5, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    aget-object v3, v5, v8

    .line 188
    .local v3, "slot":Lspeech/InterpretationProto$Slot;
    iget-object v5, v3, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    const-string v5, "RecognizerEventProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing semantic interp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 194
    iget-object v5, v3, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "interps":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 196
    aget-object v1, v2, v0

    .line 198
    .local v1, "interpStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 199
    const-string v5, "_call"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v2, v4}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->handleCallCommand([Ljava/lang/String;I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v4

    goto :goto_0

    .line 201
    :cond_2
    const-string v5, "_cancel"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "_okay"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    const-string v6, "_call_back"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    const-string v6, "_respond"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    const-string v6, "_hotword"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    const-string v6, "_next"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    const-string v6, "_select"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 208
    invoke-static {p2}, Lcom/google/android/s3/message/S3ResponseBuilder;->createWithRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v4

    goto/16 :goto_0

    .line 209
    :cond_3
    const-string v5, "_other"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method process(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mMode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mMode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mMode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 82
    const-string v0, "RecognizerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasEventType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    const-string v0, "RecognizerEventProcessor"

    const-string v2, "Received recognition event without type."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 99
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 78
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getStatus()I

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    const-string v0, "RecognizerEventProcessor"

    const-string v2, "Error from embedded recognizer."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/google/android/speech/internal/RecognizerEventProcessor;->mMode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v0, v1, :cond_4

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->processEventInGrammarMode(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_1

    .line 97
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->processEventInDictationAndHotwordMode(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_1
.end method
