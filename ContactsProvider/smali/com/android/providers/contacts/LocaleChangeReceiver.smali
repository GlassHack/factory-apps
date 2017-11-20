.class public Lcom/android/providers/contacts/LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 36
    .local v0, "iprovider":Landroid/content/IContentProvider;
    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 37
    .local v1, "provider":Landroid/content/ContentProvider;
    instance-of v2, v1, Lcom/android/providers/contacts/ContactsProvider2;

    if-eqz v2, :cond_0

    .line 38
    check-cast v1, Lcom/android/providers/contacts/ContactsProvider2;

    .end local v1    # "provider":Landroid/content/ContentProvider;
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->onLocaleChanged()V

    .line 40
    :cond_0
    return-void
.end method
