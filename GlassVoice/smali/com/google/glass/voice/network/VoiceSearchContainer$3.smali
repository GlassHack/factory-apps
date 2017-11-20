.class Lcom/google/glass/voice/network/VoiceSearchContainer$3;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;->getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/VoiceSearchContainer;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$3;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
    .param p2, "force"    # Z
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 315
    return-void
.end method
