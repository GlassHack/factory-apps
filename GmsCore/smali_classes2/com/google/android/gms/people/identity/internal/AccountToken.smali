.class public final Lcom/google/android/gms/people/identity/internal/AccountToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/a;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/people/identity/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/AccountToken;->CREATOR:Lcom/google/android/gms/people/identity/internal/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->a:I

    .line 42
    iput-object p2, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->c:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/google/android/gms/people/identity/internal/a;->a(Lcom/google/android/gms/people/identity/internal/AccountToken;Landroid/os/Parcel;)V

    .line 81
    return-void
.end method
