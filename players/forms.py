from django import forms
from .models import Player

class PlayerForm(forms.ModelForm):
    class Meta:
        model = Player
        fields = ['name', 'date_joined', 'position', 'salary_payment', 'contact_person']
        widgets = {
            'name': forms.TextInput(attrs={'placeholder': 'e.g. John Smith'}),
            'date_joined': forms.DateInput(attrs={'type': 'date'}),
            'position': forms.TextInput(attrs={'placeholder': 'e.g. Setter, Libero'}),
            'salary_payment': forms.NumberInput(attrs={'placeholder': '0.00', 'step': '0.01'}),
            'contact_person': forms.TextInput(attrs={'placeholder': 'e.g. Jane Smith'}),
        }
