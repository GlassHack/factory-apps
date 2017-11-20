.class public final Lcom/android/systemui/recent/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLoaded:Z

.field private mThumbnail:Landroid/graphics/drawable/Drawable;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 51
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 52
    iput v1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    .line 53
    iput v1, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    .line 55
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "_taskId"    # I
    .param p2, "_persistentTaskId"    # I
    .param p3, "_resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_packageName"    # Ljava/lang/String;
    .param p6, "_description"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 42
    iput p1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    .line 43
    iput p2, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    .line 45
    iput-object p6, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLoaded:Z

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    .line 78
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLoaded:Z

    .line 61
    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 90
    return-void
.end method
