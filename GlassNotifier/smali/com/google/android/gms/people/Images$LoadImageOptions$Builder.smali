.class public Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Images$LoadImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aCT:I

.field private aCU:I

.field public mUseLargePictureForCp2Images:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->aCT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->aCU:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->aCT:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->aCU:I

    return v0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/people/Images$LoadImageOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/Images$LoadImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/Images$LoadImageOptions;-><init>(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;Lcom/google/android/gms/people/Images$1;)V

    return-object v0
.end method

.method public setAvatarOptions(I)Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;
    .locals 0
    .param p1, "options"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->aCU:I

    return-object p0
.end method

.method public setImageSize(I)Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->aCT:I

    return-object p0
.end method

.method public setUseLargePictureForCp2Images(Z)Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;
    .locals 0
    .param p1, "useLargePicture"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->mUseLargePictureForCp2Images:Z

    return-object p0
.end method
