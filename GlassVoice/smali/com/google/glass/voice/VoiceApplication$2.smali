.class Lcom/google/glass/voice/VoiceApplication$2;
.super Ljava/lang/Object;
.source "VoiceApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceApplication;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/voice/VoiceApplication$2;->this$0:Lcom/google/glass/voice/VoiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/VoiceApplication$2;->this$0:Lcom/google/glass/voice/VoiceApplication;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->loadMainMenuItemsUsageStatsCache()V

    .line 64
    return-void
.end method
