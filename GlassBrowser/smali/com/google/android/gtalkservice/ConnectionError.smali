.class public final Lcom/google/android/gtalkservice/ConnectionError;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUTHENTICATION_EXPIRED:I = 0x5

.field public static final AUTHENTICATION_FAILED:I = 0x4

.field public static final CONNECTION_FAILED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/ConnectionError;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEART_BEAT_TIMED_OUT:I = 0x6

.field public static final NONE:I = 0x0

.field public static final NO_NETWORK:I = 0x1

.field public static final SERVER_ERROR:I = 0x7

.field public static final SERVER_REJECT_RATE_LIMITING:I = 0x8

.field public static final SERVICE_DISABLED:I = 0xb

.field public static final SESSION_TERMINATED:I = 0x9

.field public static final UNKNOWN:I = 0xa

.field public static final UNKNOWN_HOST:I = 0x3

.field public static final UNKNOWN_HOST_ERROR_STR:Ljava/lang/String; = "host-unknown"


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionError$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/ConnectionError;->setError(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    .line 73
    return-void
.end method

.method public static isAuthenticationError(I)Z
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkError(I)Z
    .locals 2
    .param p0, "error"    # I

    .prologue
    const/4 v0, 0x1

    .line 104
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_0

    .line 144
    :pswitch_0
    const-string v0, "NO ERROR"

    :goto_0
    return-object v0

    .line 117
    :pswitch_1
    const-string v0, "NO NETWORK"

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v0, "CONNECTION FAILED"

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "UNKNOWN HOST"

    goto :goto_0

    .line 126
    :pswitch_4
    const-string v0, "AUTH FAILED"

    goto :goto_0

    .line 129
    :pswitch_5
    const-string v0, "AUTH EXPIRED"

    goto :goto_0

    .line 132
    :pswitch_6
    const-string v0, "HEARTBEAT TIMEOUT"

    goto :goto_0

    .line 135
    :pswitch_7
    const-string v0, "SERVER FAILED"

    goto :goto_0

    .line 138
    :pswitch_8
    const-string v0, "SERVER REJECT - RATE LIMIT"

    goto :goto_0

    .line 141
    :pswitch_9
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    return v0
.end method

.method public isAuthenticationError()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticationExpired()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkError()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->isNetworkError(I)Z

    move-result v0

    return v0
.end method

.method public isNoError()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    .line 81
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
