.class public Lcom/google/android/gms/people/model/AccountMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/model/a;


# instance fields
.field final a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/people/model/a;

    invoke-direct {v0}, Lcom/google/android/gms/people/model/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/AccountMetadata;->CREATOR:Lcom/google/android/gms/people/model/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/people/model/AccountMetadata;->a:I

    .line 50
    return-void
.end method

.method constructor <init>(IZZZZ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/gms/people/model/AccountMetadata;->a:I

    .line 42
    iput-boolean p2, p0, Lcom/google/android/gms/people/model/AccountMetadata;->b:Z

    .line 43
    iput-boolean p3, p0, Lcom/google/android/gms/people/model/AccountMetadata;->c:Z

    .line 44
    iput-boolean p4, p0, Lcom/google/android/gms/people/model/AccountMetadata;->d:Z

    .line 45
    iput-boolean p5, p0, Lcom/google/android/gms/people/model/AccountMetadata;->e:Z

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/google/android/gms/people/model/a;->a(Lcom/google/android/gms/people/model/AccountMetadata;Landroid/os/Parcel;)V

    .line 60
    return-void
.end method
