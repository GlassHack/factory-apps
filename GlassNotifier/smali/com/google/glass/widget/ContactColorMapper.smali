.class public Lcom/google/glass/widget/ContactColorMapper;
.super Ljava/lang/Object;
.source "ContactColorMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;,
        Lcom/google/glass/widget/ContactColorMapper$ColorMapper;
    }
.end annotation


# static fields
.field private static final ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

.field private static final COLOR_MAPPERS:Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

.field private static final NOT_MAPPABLE:I = -0x1


# instance fields
.field private final colors:[I

.field private final defaultColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/widget/ContactColorMapper$1;

    invoke-direct {v0}, Lcom/google/glass/widget/ContactColorMapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/widget/ContactColorMapper;->ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .line 33
    new-instance v0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    invoke-direct {v0}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;-><init>()V

    const/16 v1, 0x41

    const/16 v2, 0x5a

    sget-object v3, Lcom/google/glass/widget/ContactColorMapper;->ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->put(IILcom/google/glass/widget/ContactColorMapper$ColorMapper;)Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    sget-object v3, Lcom/google/glass/widget/ContactColorMapper;->ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->put(IILcom/google/glass/widget/ContactColorMapper$ColorMapper;)Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ContactColorMapper;->COLOR_MAPPERS:Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget v0, Lcom/google/glass/common/R$array;->contact_colors:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ContactColorMapper;->colors:[I

    .line 48
    sget v0, Lcom/google/glass/common/R$color;->contact_gray:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    .line 49
    return-void
.end method

.method private mapCodePoint(I)I
    .locals 2
    .param p1, "codePoint"    # I

    .prologue
    .line 109
    sget-object v1, Lcom/google/glass/widget/ContactColorMapper;->COLOR_MAPPERS:Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    invoke-virtual {v1, p1}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->get(I)Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    move-result-object v0

    .line 110
    .local v0, "mapper":Lcom/google/glass/widget/ContactColorMapper$ColorMapper;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/glass/widget/ContactColorMapper;->colors:[I

    array-length v1, v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/widget/ContactColorMapper$ColorMapper;->mapToIndex(II)I

    move-result v1

    .line 113
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public colorizeName(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget v3, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    .line 98
    :goto_0
    return v3

    .line 78
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 79
    .local v1, "initialCodePoint":I
    invoke-direct {p0, v1}, Lcom/google/glass/widget/ContactColorMapper;->mapCodePoint(I)I

    move-result v0

    .line 88
    .local v0, "colorIndex":I
    if-ne v0, v4, :cond_1

    .line 89
    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "normalized":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 91
    invoke-direct {p0, v1}, Lcom/google/glass/widget/ContactColorMapper;->mapCodePoint(I)I

    move-result v0

    .line 95
    .end local v2    # "normalized":Ljava/lang/String;
    :cond_1
    if-eq v0, v4, :cond_2

    .line 96
    iget-object v3, p0, Lcom/google/glass/widget/ContactColorMapper;->colors:[I

    aget v3, v3, v0

    goto :goto_0

    .line 98
    :cond_2
    iget v3, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    goto :goto_0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    return v0
.end method
