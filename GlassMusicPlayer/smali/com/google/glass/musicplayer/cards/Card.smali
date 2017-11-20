.class public interface abstract Lcom/google/glass/musicplayer/cards/Card;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.end method

.method public abstract getAlbumName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getArtistName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getArtworkUrl()Ljava/lang/String;
.end method

.method public abstract getAutoplayPriority()I
.end method

.method public abstract getResultPriority()I
.end method

.method public abstract getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/glass/musicplayer/cards/Card$Type;
.end method

.method public abstract getXdiIntent()Landroid/content/Intent;
.end method

.method public abstract isBundle()Z
.end method
