.class public Lcom/google/android/gms/people/Images$LoadImageOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadImageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/Images$LoadImageOptions;


# instance fields
.field public final avatarOptions:I

.field public final imageSize:I

.field public final useLargePictureForCp2Images:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->build()Lcom/google/android/gms/people/Images$LoadImageOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/Images$LoadImageOptions;->DEFAULT:Lcom/google/android/gms/people/Images$LoadImageOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;)V
    .locals 1
    .param p1, "b"    # Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->a(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->imageSize:I

    invoke-static {p1}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->b(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->avatarOptions:I

    iget-boolean v0, p1, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->mUseLargePictureForCp2Images:Z

    iput-boolean v0, p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->useLargePictureForCp2Images:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;Lcom/google/android/gms/people/Images$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/people/Images$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/Images$LoadImageOptions;-><init>(Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;)V

    return-void
.end method
