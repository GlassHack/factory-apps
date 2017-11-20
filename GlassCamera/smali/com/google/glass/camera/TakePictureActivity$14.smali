.class Lcom/google/glass/camera/TakePictureActivity$14;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->createVoiceMenuItemsForViewfinder()Lcom/google/glass/voice/menu/VoiceMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$14;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$14;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/TakePictureActivity;->onUserInteraction()V

    .line 1038
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$14;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/TakePictureActivity;->finishAndTurnScreenOffIfRequested()V

    .line 1039
    return-void
.end method
