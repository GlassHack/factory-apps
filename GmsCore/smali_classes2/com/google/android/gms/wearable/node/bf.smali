.class public final Lcom/google/android/gms/wearable/node/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field b:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    .line 41
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bf;-><init>()V

    return-void
.end method
