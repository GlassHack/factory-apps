.class public Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;
.super Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final b:Landroid/app/ActionBar$TabListener;

.field private c:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/v11/ui/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/v11/ui/a;-><init>(Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;->b:Landroid/app/ActionBar$TabListener;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;->c(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 86
    :cond_0
    return-void
.end method
