.class public final Lcom/google/g/a/b/l;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/g/a/b/l;->a:I

    .line 161
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/g/a/b/l;->a:I

    return v0
.end method
