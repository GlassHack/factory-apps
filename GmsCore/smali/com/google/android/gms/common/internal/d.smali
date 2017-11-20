.class public final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Landroid/content/Intent;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->a:Landroid/app/Activity;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->b:Landroid/support/v4/app/Fragment;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->c:Landroid/content/Intent;

    .line 29
    iput p3, p0, Lcom/google/android/gms/common/internal/d;->d:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->a:Landroid/app/Activity;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->b:Landroid/support/v4/app/Fragment;

    .line 35
    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->c:Landroid/content/Intent;

    .line 36
    iput p3, p0, Lcom/google/android/gms/common/internal/d;->d:I

    .line 37
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->c:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->b:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->b:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->c:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/d;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    .line 48
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    :goto_1
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->c:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/d;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    const-string v0, "SettingsRedirect"

    const-string v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
