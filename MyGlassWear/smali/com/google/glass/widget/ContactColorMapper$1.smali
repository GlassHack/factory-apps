.class final Lcom/google/glass/widget/ContactColorMapper$1;
.super Ljava/lang/Object;
.source "ContactColorMapper.java"

# interfaces
.implements Lcom/google/glass/widget/ContactColorMapper$ColorMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ContactColorMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapToIndex(II)I
    .locals 1
    .param p1, "codePoint"    # I
    .param p2, "colorCount"    # I

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x41

    rem-int/2addr v0, p2

    return v0
.end method
