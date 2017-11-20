.class public Lcom/google/glass/android/glass/widget/CardBuilderFactory;
.super Ljava/lang/Object;
.source "CardBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCardBuilder(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)Lcom/google/android/glass/widget/CardBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Lcom/google/android/glass/widget/CardBuilder$Layout;

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    return-object v0
.end method
