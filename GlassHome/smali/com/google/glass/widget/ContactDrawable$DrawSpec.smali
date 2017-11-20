.class final enum Lcom/google/glass/widget/ContactDrawable$DrawSpec;
.super Ljava/lang/Enum;
.source "ContactDrawable.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ContactDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DrawSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/widget/ContactDrawable$DrawSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/widget/ContactDrawable$DrawSpec;

.field public static final enum LARGE_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

.field public static final enum LARGE_WITH_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

.field public static final enum SMALL_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;


# instance fields
.field private final initialBaselineOffsetId:I

.field private final initialTextSizeId:I

.field public final initialTypeface:Landroid/graphics/Typeface;

.field private final radiusId:I

.field public final showName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 41
    new-instance v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    const-string v1, "LARGE_WITH_NAME"

    const/4 v2, 0x0

    sget v3, Lcom/google/glass/common/R$dimen;->contact_radius_large:I

    sget v4, Lcom/google/glass/common/R$dimen;->contact_initial_text_size_large:I

    sget v5, Lcom/google/glass/common/R$dimen;->contact_initial_baseline_offset_large:I

    .line 45
    invoke-static {}, Lcom/google/glass/widget/ContactDrawable;->access$000()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;-><init>(Ljava/lang/String;IIIILandroid/graphics/Typeface;Z)V

    sput-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITH_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 51
    new-instance v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    const-string v1, "LARGE_WITHOUT_NAME"

    const/4 v2, 0x1

    sget v3, Lcom/google/glass/common/R$dimen;->contact_radius_large:I

    sget v4, Lcom/google/glass/common/R$dimen;->contact_initial_text_size_large:I

    sget v5, Lcom/google/glass/common/R$dimen;->contact_initial_baseline_offset_large:I

    .line 55
    invoke-static {}, Lcom/google/glass/widget/ContactDrawable;->access$000()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;-><init>(Ljava/lang/String;IIIILandroid/graphics/Typeface;Z)V

    sput-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 59
    new-instance v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    const-string v1, "SMALL_WITHOUT_NAME"

    const/4 v2, 0x2

    sget v3, Lcom/google/glass/common/R$dimen;->contact_radius_small:I

    sget v4, Lcom/google/glass/common/R$dimen;->contact_initial_text_size_small:I

    sget v5, Lcom/google/glass/common/R$dimen;->contact_initial_baseline_offset_small:I

    .line 63
    invoke-static {}, Lcom/google/glass/widget/ContactDrawable;->access$100()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;-><init>(Ljava/lang/String;IIIILandroid/graphics/Typeface;Z)V

    sput-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->SMALL_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITH_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->SMALL_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->$VALUES:[Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILandroid/graphics/Typeface;Z)V
    .locals 0
    .param p3, "radiusId"    # I
    .param p4, "initialTextSizeId"    # I
    .param p5, "initialBaselineOffsetId"    # I
    .param p6, "initialTypeface"    # Landroid/graphics/Typeface;
    .param p7, "showName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/graphics/Typeface;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->radiusId:I

    .line 87
    iput p4, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialTextSizeId:I

    .line 88
    iput p5, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialBaselineOffsetId:I

    .line 89
    iput-object p6, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialTypeface:Landroid/graphics/Typeface;

    .line 90
    iput-boolean p7, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->showName:Z

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->$VALUES:[Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    invoke-virtual {v0}, [Lcom/google/glass/widget/ContactDrawable$DrawSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    return-object v0
.end method


# virtual methods
.method public final resolveInitialBaselineOffset(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 105
    iget v0, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialBaselineOffsetId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public final resolveInitialTextSize(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    iget v0, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialTextSizeId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public final resolveRadius(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 95
    iget v0, p0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->radiusId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
