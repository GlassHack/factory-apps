.class public Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadOwnersOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;


# instance fields
.field private LU:I

.field private Ma:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->LU:I

    return-void
.end method


# virtual methods
.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->LU:I

    return v0
.end method

.method public isIncludePlusPages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->Ma:Z

    return v0
.end method

.method public setIncludePlusPages(Z)Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
    .locals 0
    .param p1, "includePlusPages"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->Ma:Z

    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->LU:I

    return-object p0
.end method
