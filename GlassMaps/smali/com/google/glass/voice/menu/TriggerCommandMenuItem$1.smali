.class final Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$spoken:Z

.field final synthetic val$trigger:Lcom/google/android/glass/app/VoiceTrigger;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;Z)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iput-boolean p4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$spoken:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 7

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->onTriggered(Lcom/google/glass/voice/menu/VoiceMenuItem;)Z

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iget-boolean v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$spoken:Z

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 68
    invoke-static/range {v0 .. v6}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$000(Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;ZJ)Ljava/lang/Runnable;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$spoken:Z

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;->val$nativeAppItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 77
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/ActionController$Callback;->NO_OP:Lcom/google/glass/voice/ActionController$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    goto :goto_0
.end method
