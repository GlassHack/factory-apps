.class public Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ConnectivityStatusCardMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;
    }
.end annotation


# static fields
.field static final DISMISS_CARD_ID:I = 0x2

.field static final EXTRA_MENU_TO_SHOW:Ljava/lang/String; = "menu_to_show"

.field static final EXTRA_MORE_INFO:Ljava/lang/String; = "more_info"

.field static final JOIN_NETWORK_ID:I = 0x0

.field static final MORE_INFO_ID:I = 0x1


# instance fields
.field private finishWhenMenuDismissed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->finishWhenMenuDismissed:Z

    .line 132
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.EXTRA_FROM_LIVECARD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->openOptionsMenu()V

    .line 54
    :cond_0
    return-void
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.EXTRA_FROM_LIVECARD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "menu_to_show"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "menu_to_show"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 66
    .local v0, "menuId":I
    packed-switch v0, :pswitch_data_0

    .line 77
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->DISMISS_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v5}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_no_50:I

    .line 78
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :pswitch_0
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->JOIN_A_NETWORK:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v5}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_50:I

    .line 69
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 72
    :pswitch_1
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->HELP_WITH_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v5}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_help_50:I

    .line 73
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 82
    .end local v0    # "menuId":I
    :cond_0
    const/4 v1, 0x1

    .line 84
    :cond_1
    return v1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 111
    const-string v2, "2"

    .line 112
    .local v2, "menuAction":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.glass.action.ACTION_HIDE_CONNECTIVITY_STATUS_CARD"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v4}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    :goto_0
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATUS_CARD:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "m"

    new-array v6, v6, [Ljava/lang/Object;

    .line 117
    invoke-static {v5, v2, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 118
    const/4 v3, 0x1

    return v3

    .line 92
    .end local v2    # "menuAction":Ljava/lang/String;
    :pswitch_0
    const-string v2, "0"

    .line 93
    .restart local v2    # "menuAction":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.SETUP_WIFI"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 98
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "menuAction":Ljava/lang/String;
    :pswitch_1
    const-string v2, "1"

    .line 99
    .restart local v2    # "menuAction":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->finishWhenMenuDismissed:Z

    .line 100
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;

    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "more_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;)V

    .line 101
    .local v0, "helpDialog":Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;
    new-instance v3, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;

    invoke-direct {v3, p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;)V

    invoke-virtual {v0, v3}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    invoke-virtual {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;->show()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 124
    iget-boolean v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->finishWhenMenuDismissed:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->finish()V

    .line 127
    :cond_0
    return-void
.end method

.method protected scheduleToShowGlassTipsForMenu()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
