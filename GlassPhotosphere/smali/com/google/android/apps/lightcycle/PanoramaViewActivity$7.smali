.class Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;
.super Ljava/lang/Object;
.source "PanoramaViewActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showLoadingErrorAndExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 494
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->finish()V

    .line 498
    return-void
.end method
