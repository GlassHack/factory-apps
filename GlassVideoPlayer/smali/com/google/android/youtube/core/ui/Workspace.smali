.class public Lcom/google/android/youtube/core/ui/Workspace;
.super Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.source "SourceFile"


# instance fields
.field private b:Lcom/google/android/youtube/core/ui/TabRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/TabRow;->a(IZ)V

    .line 72
    :cond_0
    return-void
.end method
