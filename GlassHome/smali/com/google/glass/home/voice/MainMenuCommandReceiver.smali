.class public abstract Lcom/google/glass/home/voice/MainMenuCommandReceiver;
.super Ljava/lang/Object;
.source "MainMenuCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/MainMenuCommandReceiver$NativeCommandReceiver;,
        Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;
    }
.end annotation


# instance fields
.field private final showFastScrollLabel:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showFastScrollLabel"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver;->showFastScrollLabel:Z

    .line 23
    return-void
.end method


# virtual methods
.method public abstract bind(Landroid/view/View;)V
.end method

.method public abstract createTouchMenuView(Landroid/view/LayoutInflater;Lcom/google/glass/app/GlassActivity;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final showFastScrollLabel()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver;->showFastScrollLabel:Z

    return v0
.end method
