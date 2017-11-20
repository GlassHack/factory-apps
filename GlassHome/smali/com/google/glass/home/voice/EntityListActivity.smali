.class public Lcom/google/glass/home/voice/EntityListActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "EntityListActivity.java"


# instance fields
.field private entityListFragment:Lcom/google/glass/entity/EntityListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "listFragment"    # Landroid/app/Fragment;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 64
    .local v0, "trans":Landroid/app/FragmentTransaction;
    sget v1, Lcom/google/glass/home/R$id;->root:I

    const-string v2, "entity"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 65
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 66
    return-void
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "entitySet"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "menuItemAction"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "menuItemAction":I
    invoke-static {}, Lcom/google/glass/entity/EntitySet;->values()[Lcom/google/glass/entity/EntitySet;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "entitySet"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aget-object v3, v6, v5

    .line 38
    .local v3, "prependEntitySet":Lcom/google/glass/entity/EntitySet;
    new-instance v5, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;

    .line 39
    invoke-static {}, Lcom/google/glass/entity/EntityProviderConstants;->getAllEntitiesUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3, v1}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;-><init>(Lcom/google/glass/app/GlassActivity;Landroid/net/Uri;Lcom/google/glass/entity/EntitySet;I)V

    iput-object v5, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    .line 59
    .end local v1    # "menuItemAction":I
    .end local v3    # "prependEntitySet":Lcom/google/glass/entity/EntitySet;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {p0, v5}, Lcom/google/glass/home/voice/EntityListActivity;->addFragment(Landroid/app/Fragment;)V

    .line 60
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "invocationWrapper"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 44
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/home/voice/MainMenuCommandReceiver;>;"
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "invocationWrapper"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .local v2, "parcelable":Landroid/os/Parcelable;
    move-object v0, v2

    .line 45
    check-cast v0, Lcom/google/glass/voice/InvocationWrapper;

    .line 46
    .local v0, "invocationWrapper":Lcom/google/glass/voice/InvocationWrapper;
    invoke-virtual {v0}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 47
    new-instance v8, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;

    invoke-virtual {v0}, Lcom/google/glass/voice/InvocationWrapper;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v9

    .line 48
    invoke-virtual {v0}, Lcom/google/glass/voice/InvocationWrapper;->getCommandType()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)V

    .line 47
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    :cond_2
    new-instance v8, Lcom/google/glass/home/voice/MainMenuCommandReceiver$NativeCommandReceiver;

    invoke-virtual {v0}, Lcom/google/glass/voice/InvocationWrapper;->getTrigger()Lcom/google/android/glass/app/VoiceTrigger;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/home/voice/MainMenuCommandReceiver$NativeCommandReceiver;-><init>(Lcom/google/android/glass/app/VoiceTrigger;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 53
    .end local v0    # "invocationWrapper":Lcom/google/glass/voice/InvocationWrapper;
    .end local v2    # "parcelable":Landroid/os/Parcelable;
    :cond_3
    new-instance v5, Lcom/google/glass/home/voice/CommandReceiverListFragment;

    invoke-direct {v5, p0, v4}, Lcom/google/glass/home/voice/CommandReceiverListFragment;-><init>(Lcom/google/glass/app/GlassActivity;Ljava/util/List;)V

    iput-object v5, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    goto :goto_0

    .line 54
    .end local v4    # "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/home/voice/MainMenuCommandReceiver;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "entityPhoneDisambiguation"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    new-instance v5, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "entityPhoneDisambiguation"

    .line 57
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 56
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    iput-object v5, p0, Lcom/google/glass/home/voice/EntityListActivity;->entityListFragment:Lcom/google/glass/entity/EntityListFragment;

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityListActivity;->finish()V

    .line 72
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/google/glass/home/R$layout;->empty_layout:I

    return v0
.end method
