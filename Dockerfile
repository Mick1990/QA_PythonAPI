FROM python
WORKDIR /tests_project/
COPY requirements.txt .
RUN pip install -r requirements.txt
ENV ENV=dev
CMD python -m pytest --alluredir=test_result/ /tests_project/tests/

