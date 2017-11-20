.class Lcom/google/android/gms/internal/gs$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gs$b;->onOptInOptionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/b$b",
        "<",
        "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Vz:Lcom/google/android/gms/internal/gs$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gs$b$1;->Vz:Lcom/google/android/gms/internal/gs$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;->onOptInOptionsChanged()V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gs$b$1;->a(Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;)V

    return-void
.end method

.method public cs()V
    .locals 0

    return-void
.end method
