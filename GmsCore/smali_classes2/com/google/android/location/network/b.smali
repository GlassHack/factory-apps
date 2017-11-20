.class final Lcom/google/android/location/network/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/network/e;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/google/android/location/network/ConfirmAlertActivity;


# direct methods
.method constructor <init>(Lcom/google/android/location/network/ConfirmAlertActivity;Lcom/google/android/location/network/e;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/location/network/b;->c:Lcom/google/android/location/network/ConfirmAlertActivity;

    iput-object p2, p0, Lcom/google/android/location/network/b;->a:Lcom/google/android/location/network/e;

    iput-object p3, p0, Lcom/google/android/location/network/b;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/google/android/location/network/b;->a:Lcom/google/android/location/network/e;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "NlpPrefs"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "NlpPrefs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setConfirmNLP: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v3, Lcom/google/android/location/network/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "confirmNlp"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    iget-object v0, p0, Lcom/google/android/location/network/b;->b:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 147
    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    return-void

    :cond_1
    move v0, v2

    .line 142
    goto :goto_0

    :cond_2
    move v1, v2

    .line 147
    goto :goto_1
.end method
