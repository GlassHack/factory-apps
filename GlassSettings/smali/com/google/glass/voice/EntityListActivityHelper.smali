.class public Lcom/google/glass/voice/EntityListActivityHelper;
.super Ljava/lang/Object;
.source "EntityListActivityHelper.java"


# static fields
.field public static final ACTION_SHOW_ENTITY_LIST:Ljava/lang/String; = "com.google.glass.ACTION_SHOW_ENTITY_LIST"

.field public static final EXTRA_ENTITY_PHONE_DISAMBIGUATION:Ljava/lang/String; = "entityPhoneDisambiguation"

.field public static final EXTRA_ENTITY_SET:Ljava/lang/String; = "entitySet"

.field public static final EXTRA_INVOCATION_WRAPPER:Ljava/lang/String; = "invocationWrapper"

.field public static final EXTRA_MENU_ITEM_ACTION:Ljava/lang/String; = "menuItemAction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntityListActivityIntent(Lcom/google/glass/entity/EntitySet;I)Landroid/content/Intent;
    .locals 3
    .param p0, "entitySet"    # Lcom/google/glass/entity/EntitySet;
    .param p1, "menuItemAction"    # I

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SHOW_ENTITY_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entitySet"

    invoke-virtual {p0}, Lcom/google/glass/entity/EntitySet;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v1, "menuItemAction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    return-object v0
.end method

.method public static getEntityListActivityIntent([Lcom/google/glass/voice/InvocationWrapper;)Landroid/content/Intent;
    .locals 2
    .param p0, "invocationWrappers"    # [Lcom/google/glass/voice/InvocationWrapper;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SHOW_ENTITY_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "invocationWrapper"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public static startPhoneNumberDisambiguation(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SHOW_ENTITY_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "entityPhoneDisambiguation"

    .line 34
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
