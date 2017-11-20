.class final Lcom/google/android/location/places/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/s;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/s;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/location/places/ui/t;->a:Lcom/google/android/location/places/ui/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/location/places/ui/t;->a:Lcom/google/android/location/places/ui/s;

    invoke-static {v0}, Lcom/google/android/location/places/ui/s;->a(Lcom/google/android/location/places/ui/s;)Lcom/google/android/location/places/ui/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/places/ui/v;->U()V

    .line 83
    return-void
.end method
