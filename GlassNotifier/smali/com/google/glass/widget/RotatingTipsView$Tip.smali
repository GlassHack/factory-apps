.class public Lcom/google/glass/widget/RotatingTipsView$Tip;
.super Ljava/lang/Object;
.source "RotatingTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/RotatingTipsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tip"
.end annotation


# instance fields
.field private final isDefault:Z

.field private final text:Ljava/lang/String;

.field private final textSize:F

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLandroid/graphics/Typeface;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "isDefault"    # Z

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->text:Ljava/lang/String;

    .line 98
    iput p2, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->textSize:F

    .line 99
    iput-object p3, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->typeface:Landroid/graphics/Typeface;

    .line 100
    iput-boolean p4, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->isDefault:Z

    .line 101
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->textSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView$Tip;->isDefault:Z

    return v0
.end method
