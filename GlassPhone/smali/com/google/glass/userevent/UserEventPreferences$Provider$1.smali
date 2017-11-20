.class Lcom/google/glass/userevent/UserEventPreferences$Provider$1;
.super Ljava/lang/Object;
.source "UserEventPreferences.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventPreferences$Provider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/userevent/UserEventPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventPreferences$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventPreferences$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventPreferences$Provider;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->this$0:Lcom/google/glass/userevent/UserEventPreferences$Provider;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/userevent/UserEventPreferences;
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->val$context:Landroid/content/Context;

    const-string v2, "UserEventPrefs"

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/glass/userevent/UserEventPreferences;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/glass/userevent/UserEventPreferences;-><init>(Landroid/content/SharedPreferences;Lcom/google/glass/userevent/UserEventPreferences$1;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->get()Lcom/google/glass/userevent/UserEventPreferences;

    move-result-object v0

    return-object v0
.end method
