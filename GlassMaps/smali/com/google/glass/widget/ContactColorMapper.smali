.class public Lcom/google/glass/widget/ContactColorMapper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 24
    new-instance v0, Lcom/google/glass/widget/ContactColorMapper$1;

    invoke-direct {v0}, Lcom/google/glass/widget/ContactColorMapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/widget/ContactColorMapper;->ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .line 35
    new-instance v0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    invoke-direct {v0}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;-><init>()V

    const/16 v1, 0x41

    const/16 v2, 0x5a

    sget-object v3, Lcom/google/glass/widget/ContactColorMapper;->ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->put(IILcom/google/glass/widget/ContactColorMapper$ColorMapper;)Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    sget-object v3, Lcom/google/glass/widget/ContactColorMapper;->ALPHA_COLOR_MAPPER:Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->put(IILcom/google/glass/widget/ContactColorMapper$ColorMapper;)Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ContactColorMapper;->COLOR_MAPPERS:Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget v0, Lcom/google/glass/common/R$array;->contact_colors:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ContactColorMapper;->colors:[I

    .line 50
    sget v0, Lcom/google/glass/common/R$color;->contact_gray:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    .line 51
    return-void
.end method

.method private mapCodePoint(I)I
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/google/glass/widget/ContactColorMapper;->COLOR_MAPPERS:Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->get(I)Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/glass/widget/ContactColorMapper;->colors:[I

    array-length v1, v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/widget/ContactColorMapper$ColorMapper;->mapToIndex(II)I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public colorizeName(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    .line 100
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 81
    invoke-direct {p0, v0}, Lcom/google/glass/widget/ContactColorMapper;->mapCodePoint(I)I

    move-result v0

    .line 90
    if-ne v0, v1, :cond_1

    .line 91
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 93
    invoke-direct {p0, v0}, Lcom/google/glass/widget/ContactColorMapper;->mapCodePoint(I)I

    move-result v0

    .line 97
    :cond_1
    if-eq v0, v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/glass/widget/ContactColorMapper;->colors:[I

    aget v0, v1, v0

    goto :goto_0

    .line 100
    :cond_2
    iget v0, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    goto :goto_0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/glass/widget/ContactColorMapper;->defaultColor:I

    return v0
.end method
