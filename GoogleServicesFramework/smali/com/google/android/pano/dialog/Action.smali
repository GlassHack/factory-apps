.class public Lcom/google/android/pano/dialog/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/dialog/Action$Builder;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/google/android/pano/dialog/Action$1;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/Action$1;-><init>()V

    sput-object v0, Lcom/google/android/pano/dialog/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/dialog/Action$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/dialog/Action$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/pano/dialog/Action;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mHasNext:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mInfoOnly:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/pano/dialog/Action;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/pano/dialog/Action;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/pano/dialog/Action;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/pano/dialog/Action;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mIconUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckSetId()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIndicator(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x5

    .line 351
    iget v3, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    if-nez v3, :cond_1

    .line 352
    const/4 v1, 0x0

    .line 371
    :cond_0
    :goto_0
    return-object v1

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 358
    :cond_2
    const/4 v1, 0x0

    .line 360
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 361
    .local v2, "packageContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 362
    .end local v2    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Action"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    const-string v3, "Action"

    const-string v4, "No icon for this action."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "Action"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    const-string v3, "Action"

    const-string v4, "No icon for this action."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasMultilineDescription()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mHasNext:Z

    return v0
.end method

.method public infoOnly()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mInfoOnly:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mEnabled:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    .line 319
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 410
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 413
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    return-void

    :cond_0
    move v0, v2

    .line 413
    goto :goto_0

    :cond_1
    move v1, v2

    .line 414
    goto :goto_1
.end method
