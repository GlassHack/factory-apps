.class public Lcom/google/android/pano/dialog/Action$Builder;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCheckSetId:I

.field private mChecked:Z

.field private mDescription:Ljava/lang/String;

.field private mDrawableResource:I

.field private mEnabled:Z

.field private mHasNext:Z

.field private mIconUri:Landroid/net/Uri;

.field private mInfoOnly:Z

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mMultilineDescription:Z

.field private mResourcePackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDrawableResource:I

    .line 64
    iput v0, p0, Lcom/google/android/pano/dialog/Action$Builder;->mCheckSetId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/Action$Builder;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/pano/dialog/Action;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/pano/dialog/Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/pano/dialog/Action;-><init>(Lcom/google/android/pano/dialog/Action$1;)V

    .line 69
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$102(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$202(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$302(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$402(Lcom/google/android/pano/dialog/Action;Landroid/content/Intent;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mResourcePackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$502(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDrawableResource:I

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$602(Lcom/google/android/pano/dialog/Action;I)I

    .line 75
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mIconUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$702(Lcom/google/android/pano/dialog/Action;Landroid/net/Uri;)Landroid/net/Uri;

    .line 76
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mChecked:Z

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$802(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 77
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mMultilineDescription:Z

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$902(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 78
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mHasNext:Z

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$1002(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 79
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mInfoOnly:Z

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$1102(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 80
    iget v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mCheckSetId:I

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$1202(Lcom/google/android/pano/dialog/Action;I)I

    .line 81
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mEnabled:Z

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$1302(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 82
    return-object v0
.end method

.method public checkSetId(I)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "checkSetId"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mCheckSetId:I

    .line 142
    return-object p0
.end method

.method public checked(Z)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mChecked:Z

    .line 122
    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDescription:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public drawableResource(I)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "drawableResource"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDrawableResource:I

    .line 112
    return-object p0
.end method

.method public enabled(Z)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mEnabled:Z

    .line 147
    return-object p0
.end method

.method public iconUri(Landroid/net/Uri;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mIconUri:Landroid/net/Uri;

    .line 117
    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mIntent:Landroid/content/Intent;

    .line 102
    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mKey:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public multilineDescription(Z)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "multilineDescription"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mMultilineDescription:Z

    .line 127
    return-object p0
.end method

.method public resourcePackageName(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mResourcePackageName:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mTitle:Ljava/lang/String;

    .line 92
    return-object p0
.end method
