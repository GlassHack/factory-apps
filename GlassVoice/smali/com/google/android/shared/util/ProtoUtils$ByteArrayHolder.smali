.class public Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/ProtoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayHolder"
.end annotation


# instance fields
.field private mBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;->mBytes:[B

    .line 294
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 302
    instance-of v0, p1, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;->mBytes:[B

    check-cast p1, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;->mBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 305
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;->mBytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;->mBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
