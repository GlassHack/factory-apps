.class final Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;
.super Ljava/lang/Object;
.source "TranslationOverScrollUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/TranslationOverScrollUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TranslationScrollResult"
.end annotation


# instance fields
.field scrollBy:I

.field translateBy:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    .line 19
    return-void
.end method
