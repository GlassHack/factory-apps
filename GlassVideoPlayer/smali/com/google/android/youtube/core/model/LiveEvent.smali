.class public final Lcom/google/android/youtube/core/model/LiveEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$LiveEvent$Status:[I


# instance fields
.field public final end:Ljava/util/Date;

.field public final selfUri:Landroid/net/Uri;

.field public final start:Ljava/util/Date;

.field public final status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public final video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$LiveEvent$Status()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/youtube/core/model/LiveEvent;->$SWITCH_TABLE$com$google$android$youtube$core$model$LiveEvent$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->values()[Lcom/google/android/youtube/core/model/LiveEvent$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->CANCELLED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->DELAYED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->PENDING:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->REJECTED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent;->$SWITCH_TABLE$com$google$android$youtube$core$model$LiveEvent$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/LiveEvent$Status;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Video;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "start time can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    .line 41
    iput-object p2, p0, Lcom/google/android/youtube/core/model/LiveEvent;->end:Ljava/util/Date;

    .line 42
    iput-object p3, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 43
    const-string v0, "selfUri can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    .line 44
    const-string v0, "video can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    .line 45
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/LiveEvent;->buildUpon()Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start(Ljava/util/Date;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->end:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end(Ljava/util/Date;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status(Lcom/google/android/youtube/core/model/LiveEvent$Status;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 49
    instance-of v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_0
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isLiveNow()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPlayable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lcom/google/android/youtube/core/model/LiveEvent;->$SWITCH_TABLE$com$google$android$youtube$core$model$LiveEvent$Status()[I

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 76
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 74
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isUpcoming()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->PENDING:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->DELAYED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Live Event [id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v1, "\', status: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', start: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
