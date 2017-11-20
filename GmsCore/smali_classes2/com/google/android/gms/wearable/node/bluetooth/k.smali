.class final Lcom/google/android/gms/wearable/node/bluetooth/k;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 295
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/IOException;B)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public final printStackTrace()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 320
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    invoke-virtual {v0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 325
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/k;->a:Ljava/io/IOException;

    invoke-virtual {v0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 330
    return-void
.end method
