.class public Lcom/google/android/wearable/app/VoiceInputResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceInputResultReceiver.java"


# static fields
.field private static final EXTRA_KEY_INDEX:Ljava/lang/String; = "index"

.field private static final EXTRA_KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final EXTRA_KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final EXTRA_KEY_REMOTE_RESULTS:Ljava/lang/String; = "remoteResults"

.field public static final VOICE_INPUT_RESULT_ACTION:Ljava/lang/String; = "com.google.android.wearable.app.VOICE_INPUT_RESULT_ACTION"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static collectVoiceInput(Landroid/content/Context;[Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "currentInputIndex"    # I
    .param p4, "remoteResults"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 107
    sget-object v5, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Collect voice input for [currentInputIndex=%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v4, "voiceIntent":Landroid/content/Intent;
    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    aget-object v1, p1, p3

    .line 117
    .local v1, "remoteInput":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {v5, v6}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "label":Ljava/lang/String;
    const-string v5, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.wearable.app.VOICE_INPUT_RESULT_ACTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "voiceInputReceiveIntent":Landroid/content/Intent;
    const-string v5, "pendingIntent"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    const-string v5, "remoteInputs"

    .line 124
    invoke-static {p1}, Lcom/google/android/wearable/app/WearUtil;->remoteInputsToBundleArray([Landroid/support/v4/app/RemoteInput;)Ljava/util/ArrayList;

    move-result-object v6

    .line 123
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    const-string v5, "index"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v5, "remoteResults"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v9, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 130
    .local v3, "voiceInputReceivePendingIntent":Landroid/app/PendingIntent;
    const-string v5, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ne p3, v5, :cond_0

    .line 136
    const-string v5, "custom_menu_pending"

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/wearable/app/R$string;->message_pending:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v5, "custom_menu_confirmed"

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/wearable/app/R$string;->message_confirmed:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 45
    const-string v8, "com.google.android.wearable.app.VOICE_INPUT_RESULT_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    const-string v8, "index"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, "currentInputIndex":I
    if-ne v1, v10, :cond_1

    .line 48
    sget-object v8, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No index specified"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .end local v1    # "currentInputIndex":I
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v1    # "currentInputIndex":I
    :cond_1
    const-string v8, "pendingIntent"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 54
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v8, "remoteInputs"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {v0}, Lcom/google/android/wearable/app/WearUtil;->remoteInputsFromBundleArray(Ljava/util/ArrayList;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    .line 56
    .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    invoke-static {v5}, Lcom/google/android/wearable/app/WearUtil;->hasRemoteInputs([Landroid/support/v4/app/RemoteInput;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_3

    .line 57
    :cond_2
    sget-object v8, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No remote input or pending intent is null"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v8, "remoteResults"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 63
    .local v6, "remoteResults":Landroid/os/Bundle;
    if-nez v6, :cond_4

    .line 64
    sget-object v8, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "no remoteResults"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v8, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 70
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 71
    :cond_5
    sget-object v8, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed the get voice input"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_6
    aget-object v8, v5, v1

    .line 76
    invoke-virtual {v8}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    array-length v8, v5

    if-ge v1, v8, :cond_7

    .line 81
    invoke-static {p1, v5, v4, v1, v6}, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->collectVoiceInput(Landroid/content/Context;[Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 84
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v3, "overlayIntent":Landroid/content/Intent;
    invoke-static {v5, v3, v6}, Landroid/support/v4/app/RemoteInput;->addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 87
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v8, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 88
    sget-object v8, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "intent was sent."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v8, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "pending intent is cancelled"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
