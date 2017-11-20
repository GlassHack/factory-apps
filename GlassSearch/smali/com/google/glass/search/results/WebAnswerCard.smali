.class public interface abstract Lcom/google/glass/search/results/WebAnswerCard;
.super Ljava/lang/Object;
.source "WebAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;
    }
.end annotation


# virtual methods
.method public abstract dispatchSetSelected(Z)V
.end method

.method public abstract getMasterAnswerView()Lcom/google/glass/search/results/WebAnswerView;
.end method

.method public abstract getViewportIndex()I
.end method

.method public abstract onOptionsItemSelected(I)Z
.end method

.method public abstract onPrepareMenu(ZLjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onPromptResult(Ljava/lang/String;)V
.end method

.method public abstract requestMenu()Z
.end method
