.class Lcom/google/glass/camera/TakePictureActivity$9;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
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
    .line 817
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$9;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$9;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$9;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$500(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$9;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$600(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 821
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$9;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1900(Lcom/google/glass/camera/TakePictureActivity;)Z

    .line 822
    return-void
.end method
