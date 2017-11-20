.class final Lcom/google/android/gms/auth/setup/d2d/a;
.super Lcom/google/android/gms/auth/login/av;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/AddAccountIntentService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/AddAccountIntentService;Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 133
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/a;->a:Lcom/google/android/gms/auth/setup/d2d/AddAccountIntentService;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/login/av;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/av;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/av;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
