.class public final Lcom/google/android/gms/recovery/f;
.super Lcom/google/android/c/e;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/auth/a/c;

.field private final c:Lcom/google/android/gms/auth/firstparty/dataservice/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/c/e;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    iget-object v1, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/recovery/f;->b:Lcom/google/android/gms/auth/a/c;

    .line 66
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/recovery/f;->c:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    .line 67
    return-void
.end method

.method private static a(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/a/c;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/a/c;->b:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a first party"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Lcom/google/android/gms/auth/RecoveryDecision;
    .locals 10

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x0

    .line 72
    sget-object v0, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/recovery/f;->b:Lcom/google/android/gms/auth/a/c;

    invoke-static {v0, v4}, Lcom/google/android/gms/recovery/f;->a(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/recovery/f;->c:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    move-result-object v0

    .line 77
    new-instance v6, Lcom/google/android/gms/auth/RecoveryDecision;

    invoke-direct {v6}, Lcom/google/android/gms/auth/RecoveryDecision;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->e:Z

    if-eqz v1, :cond_0

    .line 80
    iget-boolean v1, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->d:Z

    iput-boolean v1, v6, Lcom/google/android/gms/auth/RecoveryDecision;->c:Z

    .line 81
    iget-boolean v1, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->c:Z

    iput-boolean v1, v6, Lcom/google/android/gms/auth/RecoveryDecision;->d:Z

    .line 82
    iget-boolean v0, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->e:Z

    iput-boolean v0, v6, Lcom/google/android/gms/auth/RecoveryDecision;->e:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    invoke-static {v1, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/google/android/gms/recovery/f;->a:Landroid/content/Context;

    invoke-static {v2, v8, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 108
    iput-object v1, v6, Lcom/google/android/gms/auth/RecoveryDecision;->b:Landroid/app/PendingIntent;

    .line 109
    iput-object v0, v6, Lcom/google/android/gms/auth/RecoveryDecision;->f:Landroid/app/PendingIntent;

    .line 115
    :goto_0
    return-object v6

    .line 111
    :cond_0
    iput-boolean v8, v6, Lcom/google/android/gms/auth/RecoveryDecision;->c:Z

    .line 112
    iput-boolean v8, v6, Lcom/google/android/gms/auth/RecoveryDecision;->d:Z

    .line 113
    iput-boolean v8, v6, Lcom/google/android/gms/auth/RecoveryDecision;->e:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/RecoveryReadResponse;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/recovery/f;->b:Lcom/google/android/gms/auth/a/c;

    invoke-static {v0, p2}, Lcom/google/android/gms/recovery/f;->a(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v2, p0, Lcom/google/android/gms/recovery/f;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p2, v2, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    const/4 v2, 0x0

    const-string v3, "data_api"

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;-><init>(Ljava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/recovery/f;->c:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v1

    .line 134
    new-instance v0, Lcom/google/android/gms/auth/RecoveryReadResponse;

    invoke-direct {v0}, Lcom/google/android/gms/auth/RecoveryReadResponse;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->f:Ljava/lang/String;

    const-string v1, "Recovery"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error code sent by server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->g:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->h:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/RecoveryWriteRequest;Ljava/lang/String;)Lcom/google/android/gms/auth/RecoveryWriteResponse;
    .locals 8

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/recovery/f;->b:Lcom/google/android/gms/auth/a/c;

    invoke-static {v0, p2}, Lcom/google/android/gms/recovery/f;->a(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/google/android/gms/auth/be/t;->a()Lcom/google/android/gms/auth/be/t;

    move-result-object v0

    .line 142
    new-instance v7, Lcom/google/android/gms/auth/RecoveryWriteResponse;

    invoke-direct {v7}, Lcom/google/android/gms/auth/RecoveryWriteResponse;-><init>()V

    .line 143
    iget-object v1, p1, Lcom/google/android/gms/auth/RecoveryWriteRequest;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/RecoveryWriteRequest;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/RecoveryWriteRequest;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/RecoveryWriteRequest;->d:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/auth/RecoveryWriteRequest;->f:Z

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/auth/RecoveryWriteResponse;->b:Ljava/lang/String;

    .line 146
    return-object v7
.end method
