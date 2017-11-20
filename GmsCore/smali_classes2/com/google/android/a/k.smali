.class final Lcom/google/android/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/h;


# instance fields
.field private a:Lcom/google/protobuf/nano/b;

.field private b:[B

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xef

    iput v0, p0, Lcom/google/android/a/k;->c:I

    .line 24
    iget v0, p0, Lcom/google/android/a/k;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/a/k;->b:[B

    iget-object v0, p0, Lcom/google/android/a/k;->b:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->a([B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/k;->a:Lcom/google/protobuf/nano/b;

    .line 25
    return-void
.end method
