.class public abstract Lcom/google/android/gms/auth/trustagent/aq;
.super Landroid/support/v7/a/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field n:Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract e()Landroid/preference/PreferenceFragment;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/aq;->e()Landroid/preference/PreferenceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/aq;->n:Landroid/preference/PreferenceFragment;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/aq;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/aq;->n:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 24
    invoke-super {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->b()Landroid/support/v7/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 25
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/aq;->onBackPressed()V

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
