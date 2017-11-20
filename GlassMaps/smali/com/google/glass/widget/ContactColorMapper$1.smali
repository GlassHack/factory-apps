.class final Lcom/google/glass/widget/ContactColorMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/ContactColorMapper$ColorMapper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapToIndex(II)I
    .locals 1

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x41

    rem-int/2addr v0, p2

    return v0
.end method
