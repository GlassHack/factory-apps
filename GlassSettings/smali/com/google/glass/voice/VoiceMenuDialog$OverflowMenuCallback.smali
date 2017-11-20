.class public interface abstract Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverflowMenuCallback"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCount()I
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onAttachedToMenu(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V
.end method

.method public abstract onSelected(Landroid/view/View;)V
.end method
