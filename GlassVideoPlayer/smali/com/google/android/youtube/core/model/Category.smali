.class public final Lcom/google/android/youtube/core/model/Category;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ALL_TERM:Ljava/lang/String; = ""

.field private static final LIVE_TERM:Ljava/lang/String; = "!!live"


# instance fields
.field public final deprecated:Z

.field public final label:Ljava/lang/String;

.field public final regions:Ljava/lang/String;

.field public final term:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    .line 40
    return-void
.end method

.method public static createAllCategory(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/youtube/core/model/Category;

    const-string v1, ""

    sget v2, Lcom/google/android/youtube/R$string;->all_categories:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/youtube/core/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createLiveCategory(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/Category;

    const-string v1, "!!live"

    sget v2, Lcom/google/android/youtube/R$string;->live_category:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/youtube/core/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    instance-of v1, p1, Lcom/google/android/youtube/core/model/Category;

    if-eqz v1, :cond_0

    .line 50
    check-cast p1, Lcom/google/android/youtube/core/model/Category;

    .line 51
    if-eq p0, p1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    if-eq v1, v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 51
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isAll()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLive()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    const-string v1, "!!live"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    return-object v0
.end method
